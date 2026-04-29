# YAML Rare Fixtures

本目录存放当前不纳入常规 YAML 回归集的样例。

这些样例通常依赖以下语法：

- `%YAML`、`%TAG`、reserved directives。
- 显式 tag 与 tag shorthand。
- anchor / alias。
- 显式 mapping：`? key` / `: value`。
- 复杂 node property、复杂 stream 规则和规范级边角组合。

`packages/core` 的常规 fixture 收集逻辑不会扫描本目录。
