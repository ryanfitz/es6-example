
import test from 'ava';
import foo from '../lib/index';

test('foo', t => {
  t.plan(1);

  t.is(foo().bar(), 'hello world');
});
