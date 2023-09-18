package venom.name_test

import data.venom.name

test_ok_no_name_in_empty_test {
	cfg := parse_config("yaml", "")

	count(name.deny_no_name) == 0 with input as cfg
	count(name.deny_no_name_in_testcase) == 0 with input as cfg
}

test_deny_no_name {
	cfg := parse_config_file("testdata/no_name.yml")

	name.deny_no_name with input as cfg
}

test_deny_no_name_in_testcase {
	cfg := parse_config_file("testdata/no_name_testcase.yml")

	name.deny_no_name_in_testcase with input as cfg
}

test_deny_no_name_in_step {
	cfg := parse_config_file("testdata/no_name_step.yml")

	name.deny_no_name_in_step with input as cfg
}
