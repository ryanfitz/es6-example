const internals = { };

internals.bar = function () {
  return 'hello world';
};

export default function () {
  return {bar: internals.bar};
}
