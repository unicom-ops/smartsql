# 数据库设计

# 数据库设计
 - ### 1. 模块清单
- [<h4 id="module-SmarSql-MySql-from">1.1. SmarSql\-MySql</h4>](#module-SmarSql-MySql "SmarSql-MySql")
	- [<h5 id="module-SmarSql-MySql-relation}-from">1.1.1. 关联关系</h5>](#module-SmarSql-MySql-relation "关联关系")
	- [<h5 id="module-SmarSql-MySql-tableList-from">1.1.2. 表清单</h5>](#module-SmarSql-MySql-tableList "表清单")
	- [<h5 id="module-SmarSql-MySql-tableColumnList-from">1.1.3. 表列清单</h5>](#module-SmarSql-MySql-tableColumnList "表列清单")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-audit_sql-from">1.1.3.1 audit\_sql【audit-sql】</h6>](#module-SmarSql-MySql-tableColumnList-audit_sql "audit_sql")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-sql_explain-from">1.1.3.2 sql\_explain【sql_explain】</h6>](#module-SmarSql-MySql-tableColumnList-sql_explain "sql_explain")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-audit_rule-from">1.1.3.3 audit\_rule【audit_rule】</h6>](#module-SmarSql-MySql-tableColumnList-audit_rule "audit_rule")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-audit_rule_attach-from">1.1.3.4 audit\_rule\_attach【audit_rule_attach】</h6>](#module-SmarSql-MySql-tableColumnList-audit_rule_attach "audit_rule_attach")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-audit_result-from">1.1.3.5 audit\_result【audit_result】</h6>](#module-SmarSql-MySql-tableColumnList-audit_result "audit_result")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-rule_group-from">1.1.3.6 rule\_group【rule_group】</h6>](#module-SmarSql-MySql-tableColumnList-rule_group "rule_group")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-relate_rule_rule_group-from">1.1.3.7 relate\_rule\_rule\_group【relate_rule_rule_group】</h6>](#module-SmarSql-MySql-tableColumnList-relate_rule_rule_group "relate_rule_rule_group")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-dictionary_info-from">1.1.3.8 dictionary\_info【dictionary_info】</h6>](#module-SmarSql-MySql-tableColumnList-dictionary_info "dictionary_info")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-audit_advice-from">1.1.3.9 audit\_advice【audit_advice】</h6>](#module-SmarSql-MySql-tableColumnList-audit_advice "audit_advice")
		- [<h6 id="module-SmarSql-MySql-tableColumnList-database_info-from">1.1.3.10 database\_info【database_info】</h6>](#module-SmarSql-MySql-tableColumnList-database_info "database_info")
  ---

### 1. 模块清单
 - [<h4 id="module-SmarSql-MySql">1.1. SmarSql-MySql</h4>](#module-SmarSql-MySql-from)
 - [<h5 id="module-SmarSql-MySql-relation">1.1.1 关联关系</h5>](#module-SmarSql-MySql-relation-from)
 ---


![SmarSql-MySql-关系图](img/D_SmartSQL_Mysql.png '数据库表关系图')

 ---

 - [<h5 id="module-SmarSql-MySql-tableList">1.1.2 表清单</h5>](#module-SmarSql-MySql-tableList-from)

 ---

| 名称 | 代码 | 备注 |
| ------------ | ------------ | ------------ |
| audit-sql | audit\_sql | 存储提交的sql语句 |
| sql_explain | sql\_explain | 执行计划表 |
| audit_rule | audit\_rule | 审核规则信息表 |
| audit_rule_attach | audit\_rule\_attach |  |
| audit_result | audit\_result | 审核结果表 |
| rule_group | rule\_group | 规则组表 |
| relate_rule_rule_group | relate\_rule\_rule\_group | 规则与规则组关系表 |
| dictionary_info | dictionary\_info | 字典表 |
| audit_advice | audit\_advice | 审核建议表 |
| database_info | database\_info | 数据库信息表 |

 ---

 - [<h5 id="module-SmarSql-MySql-tableColumnList">1.1.3 表列清单</h5>](#module-SmarSql-MySql-tableColumnList-from)

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-audit_sql">audit_sql【audit-sql】</h6>](#module-SmarSql-MySql-tableColumnList-audit_sql-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ | id |
| user\_id | 提交人id | INT |  | 提交人id |
| audit\_sql | sql语句 | TEXT |  | sql语句 |
| db\_type | 数据库类型 | VARCHAR(32) |  | MySql
Oracle
Drds |
| create\_time | 创建时间 | DATETIME |  | 创建时间 |
| update\_time | 更新时间 | DATETIME |  | 更新时间 |
| status | 状态 | TINYINT |  | 状态（0：待审核；1.已审核；2.审核出错） |
| delete\_flag | 删除标志 | TINYINT |  | 删除标志（0：未删除，1:已删除） |
| database\_id | 数据库id | INT |  | 需要执行审核的数据库id |

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-sql_explain">sql_explain【sql_explain】</h6>](#module-SmarSql-MySql-tableColumnList-sql_explain-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ | id |
| create\_time | 创建时间 | DATETIME |  | 写入时间 |
| content | 执行计划内容 | TEXT |  | 执行计划 |
| ok\_flag | 是否正常 | TINYINT |  | 0:正常，1错误 |
| sql\_id | 对应的sqlid | INT |  | 关联的sqlID |
| db\_version | 数据库版本 | VARCHAR(128) |  | 数据库版本，可选 |

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-audit_rule">audit_rule【audit_rule】</h6>](#module-SmarSql-MySql-tableColumnList-audit_rule-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ | id |
| user\_id | 创建人 | INT |  | 创建人id |
| create\_time | 创建时间 | DATETIME |  | 创建时间 |
| update\_time | 更新时间 | DATETIME |  | 更新时间 |
| rule\_code | 规则代码 | VARCHAR(64) |  | 规则代码 |
| rule\_name | 规则名称 | VARCHAR(128) |  | 规则名称 |
| rule\_base\_type | 规则类型 | VARCHAR(32) |  | 如mysql，oracle等 |
| rule\_des | 规则描述/说明 | VARCHAR(1024) |  | 规则说明 |
| rule\_advice | 规则建议 | VARCHAR(1024) |  | 规则建议 |
| delete\_flag | 删除标志 | TINYINT |  | 删除标志0：未删除，1删除 |

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-audit_rule_attach">audit_rule_attach【audit_rule_attach】</h6>](#module-SmarSql-MySql-tableColumnList-audit_rule_attach-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ | id |
| rule\_id | 对应的规则id | INT |  | 对应规则id |
| field\_name | 字段名称 | VARCHAR(128) |  | 字段名称 |
| field\_value | 字段值 | VARCHAR(128) |  | 字段值 |
| display\_name | 中文名称/ui显示名称 | VARCHAR(64) |  | 中文名称 |

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-audit_result">audit_result【audit_result】</h6>](#module-SmarSql-MySql-tableColumnList-audit_result-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ | id |
| sql\_id | 对应sql表的id | INT |  | 对应sqlid |
| rule\_id | 对应规则id | INT |  | 对应规则表id |
| result\_flag | 审核结果表 | TINYINT |  | 是否匹配规则标志，0未匹配，1匹配 |
| create\_time | 创建时间 | DATETIME |  | 创建时间 |
| advice | 建议 | VARCHAR(1024) |  | 针对该规则的建议 |
| score | 得分 | DECIMAL(32,10) |  |  |

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-rule_group">rule_group【rule_group】</h6>](#module-SmarSql-MySql-tableColumnList-rule_group-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ | id |
| user\_id | 创建人 | INT |  | 创建人id，可空 |
| create\_id | 创建时间 | DATETIME |  | 创建时间 |
| group\_name | 组名 | VARCHAR(128) |  | 组名称 |
| remark | 备注 | VARCHAR(512) |  | 说明 |
| delete\_flag | 删除标志 | TINYINT |  | 0:为删除，1已删除 |

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-relate_rule_rule_group">relate_rule_rule_group【relate_rule_rule_group】</h6>](#module-SmarSql-MySql-tableColumnList-relate_rule_rule_group-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ | id |
| rule\_id | 规则id | INT |  | 规则id |
| rule\_group\_id | 规则组id | INT |  | 规则组id |
| delete\_flag | 删除标志 | TINYINT |  | 0:未删除/1:删除 |

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-dictionary_info">dictionary_info【dictionary_info】</h6>](#module-SmarSql-MySql-tableColumnList-dictionary_info-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ |  |
| user\_id | 创建人 | INT |  |  |
| create\_time | 创建时间 | DATETIME |  |  |
| code | 字典编码 | VARCHAR(64) |  |  |
| group\_code | 字典组 | VARCHAR(64) |  |  |
| content | 字典内容 | VARCHAR(1024) |  |  |
| update\_time | 更新时间 | DATETIME |  |  |
| delete\_flag | 删除标志 | TINYINT |  |  |

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-audit_advice">audit_advice【audit_advice】</h6>](#module-SmarSql-MySql-tableColumnList-audit_advice-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ |  |
| sql\_id | 对应sqlid | INT |  |  |
| content | 建议内容 | VARCHAR(1024) |  |  |
| create\_time | 创建时间 | DATETIME |  |  |
| update\_time | 更新时间 | DATETIME |  |  |

 ---

 - [<h6 id="module-SmarSql-MySql-tableColumnList-database_info">database_info【database_info】</h6>](#module-SmarSql-MySql-tableColumnList-database_info-from)

| 代码 | 名称 | 数据类型(MYSQL) | 主键 | 备注 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| id | id | INT | √ |  |
| user\_id | 创建人 | INT |  |  |
| database\_type | 数据库类型 | VARCHAR(32) |  | mysql,oracle等 |
| database\_ip | 数据库ip | varchar(15) |  |  |
| database\_port | 数据库端口 | INT |  |  |
| database\_url | 数据库url | VARCHAR(512) |  |  |
| test\_flag | 测试标示 | TINYINT |  | 0测试，1未测试 |
| database\_name | 数据库名称 | VARCHAR(128) |  | 数据库名称 |
| database\_alias | 数据库别名 | VARCHAR(128) |  | 数据库别名 |
| database\_remark | 数据库说明 | VARCHAR(512) |  | 数据库 |
| user\_name | 用户名 | VARCHAR(64) |  | 用户名 |
| user\_password | 用户密码 | VARCHAR(128) |  | 加密后的密码 |
| delete\_flag | 删除标示 | TINYINT |  | 0未删除，1已删除 |
| create\_time | 创建时间 | DATETIME |  |  |
| update\_time | 更新时间 | DATETIME |  |  |

 ---