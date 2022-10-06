rule all:
	input:
		expand("results/{dataset}.txt", dataset = ["A", "B"])

rule test:
	output:
		result="results/{dataset}.txt"
	shell:
		"""
		echo {wildcards.dataset} > {output}
		"""
