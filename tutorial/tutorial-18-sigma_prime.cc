/*
  Copyright (c) 2019 Sogou, Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

	  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <vector>
#include "workflow/WFTaskFactory.h"
#include "workflow/WFFacilities.h"

namespace algorithm
{

struct SigmaPrimeInput
{
	long long n;  // Calculate sum of primes up to n
};

struct SigmaPrimeOutput
{
	int error;
	long long n;
	long long sum;           // Sum of all prime numbers up to n
	long long count;         // Count of prime numbers
	std::vector<long long> primes;  // List of prime numbers (optional, for display)
};

// Simple trial division primality test
bool is_prime(long long num)
{
	if (num <= 1) return false;
	if (num <= 3) return true;
	if (num % 2 == 0 || num % 3 == 0) return false;
	
	for (long long i = 5; i * i <= num; i += 6)
	{
		if (num % i == 0 || num % (i + 2) == 0)
			return false;
	}
	return true;
}

void sigma_prime(const SigmaPrimeInput *in, SigmaPrimeOutput *out)
{
	if (in->n < 2)
	{
		out->error = EINVAL;
		out->n = in->n;
		out->sum = 0;
		out->count = 0;
		return;
	}

	out->error = 0;
	out->n = in->n;
	out->sum = 0;
	out->count = 0;
	
	// Store primes for display (up to 200 for large inputs)
	const long long MAX_STORE = 200;
	
	// Find all primes up to n and calculate their sum
	for (long long i = 2; i <= in->n; i++)
	{
		if (is_prime(i))
		{
			out->sum += i;
			out->count++;
			// Store primes if count is reasonable
			if (out->count <= MAX_STORE)
				out->primes.push_back(i);
		}
	}
}

}

using SigmaPrimeTask = WFThreadTask<algorithm::SigmaPrimeInput,
									algorithm::SigmaPrimeOutput>;

using namespace algorithm;

void callback(SigmaPrimeTask *task)
{
	auto *output = task->get_output();

	assert(task->get_state() == WFT_STATE_SUCCESS);

	if (output->error)
	{
		printf("Error: %d %s\n", output->error, strerror(output->error));
	}
	else
	{
		printf("SigmaPrime Calculation Results:\n");
		printf("================================\n");
		printf("Range: Primes up to %lld\n", output->n);
		printf("Count: %lld prime numbers found\n", output->count);
		printf("Sum (Sigma): %lld\n", output->sum);
		
		if (output->count > 0 && !output->primes.empty())
		{
			printf("\nPrime numbers: ");
			size_t limit = output->primes.size() < 20 ? output->primes.size() : 20;
			
			for (size_t i = 0; i < limit; i++)
				printf("%lld ", output->primes[i]);
			
			if (output->primes.size() > limit)
			{
				printf("... ");
				// Show last few primes
				size_t start = output->primes.size() > 5 ? output->primes.size() - 5 : limit;
				for (size_t i = start; i < output->primes.size(); i++)
					printf("%lld ", output->primes[i]);
			}
			printf("\n");
		}
	}
}

int main(int argc, char *argv[])
{
	long long n;

	if (argc != 2)
	{
		fprintf(stderr, "USAGE: %s <n>\n", argv[0]);
		fprintf(stderr, "Calculate sum of all prime numbers up to n\n");
		fprintf(stderr, "Example: %s 100\n", argv[0]);
		exit(1);
	}

	n = atoll(argv[1]);
	if (n < 2)
	{
		fprintf(stderr, "Error: n must be at least 2\n");
		exit(1);
	}

	using SPFactory = WFThreadTaskFactory<SigmaPrimeInput,
										  SigmaPrimeOutput>;
	SigmaPrimeTask *task = SPFactory::create_thread_task("sigma_prime_task",
														sigma_prime,
														callback);
	auto *input = task->get_input();
	input->n = n;

	WFFacilities::WaitGroup wait_group(1);

	printf("Calculating sum of prime numbers up to %lld...\n", n);

	Workflow::start_series_work(task, [&wait_group](const SeriesWork *) {
		wait_group.done();
	});

	wait_group.wait();
	return 0;
}
