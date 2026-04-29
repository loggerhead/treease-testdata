# Test Fixtures

`test/fixtures/` 目录保存归一化后的外部测试数据。

当前按语言分成 4 个目录：

- `test/fixtures/json`
- `test/fixtures/toml`
- `test/fixtures/yaml`
- `test/fixtures/xml`

## 文件名规则

文件名最后一段的数字表示样本类型：

- `.1.` 表示 `valid`
- `.0.` 表示 `invalid`

例子：

- `adversarial__issue150__1.0.json`
- `array__empty.1.toml`
- `2G84__00.0.yaml`
- `boeingData__ipo1__ipo_1.1.xml`

## 说明

- 这些文件名已经去掉了一部分无意义或重复前缀。
- 文件名仍然尽量保留来源目录信息，方便回溯原始数据集中的位置。
- 当前只依赖文件名中的 `1`、`0` 来区分 `valid` / `invalid`。
