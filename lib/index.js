const internals = { };

internals.bar = function () {
  return 'hello world';
};

module.exports = function () {
  return {bar: internals.bar};
};
