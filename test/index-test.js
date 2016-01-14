
import test from 'ava';
import foo from '../lib/index';

test('hello', t => {
  t.plan(1);

  t.is(foo().bar(), 'hello world');
});
