/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

// Generated from MySqlParser.g4 by ANTLR 4.13.1
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MySqlParser}.
 */
public protocol MySqlParserListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MySqlParser#root}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoot(_ ctx: MySqlParser.RootContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#root}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoot(_ ctx: MySqlParser.RootContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#sqlStatements}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSqlStatements(_ ctx: MySqlParser.SqlStatementsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#sqlStatements}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSqlStatements(_ ctx: MySqlParser.SqlStatementsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#sqlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSqlStatement(_ ctx: MySqlParser.SqlStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#sqlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSqlStatement(_ ctx: MySqlParser.SqlStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#emptyStatement_}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEmptyStatement_(_ ctx: MySqlParser.EmptyStatement_Context)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#emptyStatement_}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEmptyStatement_(_ ctx: MySqlParser.EmptyStatement_Context)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#ddlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDdlStatement(_ ctx: MySqlParser.DdlStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#ddlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDdlStatement(_ ctx: MySqlParser.DdlStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dmlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDmlStatement(_ ctx: MySqlParser.DmlStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dmlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDmlStatement(_ ctx: MySqlParser.DmlStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#transactionStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTransactionStatement(_ ctx: MySqlParser.TransactionStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#transactionStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTransactionStatement(_ ctx: MySqlParser.TransactionStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#replicationStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReplicationStatement(_ ctx: MySqlParser.ReplicationStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#replicationStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReplicationStatement(_ ctx: MySqlParser.ReplicationStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#preparedStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPreparedStatement(_ ctx: MySqlParser.PreparedStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#preparedStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPreparedStatement(_ ctx: MySqlParser.PreparedStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#compoundStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCompoundStatement(_ ctx: MySqlParser.CompoundStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#compoundStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCompoundStatement(_ ctx: MySqlParser.CompoundStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#administrationStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAdministrationStatement(_ ctx: MySqlParser.AdministrationStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#administrationStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAdministrationStatement(_ ctx: MySqlParser.AdministrationStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#utilityStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUtilityStatement(_ ctx: MySqlParser.UtilityStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#utilityStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUtilityStatement(_ ctx: MySqlParser.UtilityStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createDatabase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateDatabase(_ ctx: MySqlParser.CreateDatabaseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createDatabase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateDatabase(_ ctx: MySqlParser.CreateDatabaseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createEvent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateEvent(_ ctx: MySqlParser.CreateEventContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createEvent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateEvent(_ ctx: MySqlParser.CreateEventContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createIndex}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateIndex(_ ctx: MySqlParser.CreateIndexContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createIndex}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateIndex(_ ctx: MySqlParser.CreateIndexContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createLogfileGroup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateLogfileGroup(_ ctx: MySqlParser.CreateLogfileGroupContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createLogfileGroup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateLogfileGroup(_ ctx: MySqlParser.CreateLogfileGroupContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createProcedure}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateProcedure(_ ctx: MySqlParser.CreateProcedureContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createProcedure}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateProcedure(_ ctx: MySqlParser.CreateProcedureContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateFunction(_ ctx: MySqlParser.CreateFunctionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateFunction(_ ctx: MySqlParser.CreateFunctionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createRole}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateRole(_ ctx: MySqlParser.CreateRoleContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createRole}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateRole(_ ctx: MySqlParser.CreateRoleContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createServer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateServer(_ ctx: MySqlParser.CreateServerContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createServer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateServer(_ ctx: MySqlParser.CreateServerContext)
	/**
	 * Enter a parse tree produced by the {@code copyCreateTable}
	 * labeled alternative in {@link MySqlParser#createTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCopyCreateTable(_ ctx: MySqlParser.CopyCreateTableContext)
	/**
	 * Exit a parse tree produced by the {@code copyCreateTable}
	 * labeled alternative in {@link MySqlParser#createTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCopyCreateTable(_ ctx: MySqlParser.CopyCreateTableContext)
	/**
	 * Enter a parse tree produced by the {@code queryCreateTable}
	 * labeled alternative in {@link MySqlParser#createTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQueryCreateTable(_ ctx: MySqlParser.QueryCreateTableContext)
	/**
	 * Exit a parse tree produced by the {@code queryCreateTable}
	 * labeled alternative in {@link MySqlParser#createTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQueryCreateTable(_ ctx: MySqlParser.QueryCreateTableContext)
	/**
	 * Enter a parse tree produced by the {@code columnCreateTable}
	 * labeled alternative in {@link MySqlParser#createTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterColumnCreateTable(_ ctx: MySqlParser.ColumnCreateTableContext)
	/**
	 * Exit a parse tree produced by the {@code columnCreateTable}
	 * labeled alternative in {@link MySqlParser#createTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitColumnCreateTable(_ ctx: MySqlParser.ColumnCreateTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createTablespaceInnodb}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateTablespaceInnodb(_ ctx: MySqlParser.CreateTablespaceInnodbContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createTablespaceInnodb}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateTablespaceInnodb(_ ctx: MySqlParser.CreateTablespaceInnodbContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createTablespaceNdb}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateTablespaceNdb(_ ctx: MySqlParser.CreateTablespaceNdbContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createTablespaceNdb}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateTablespaceNdb(_ ctx: MySqlParser.CreateTablespaceNdbContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createTrigger}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateTrigger(_ ctx: MySqlParser.CreateTriggerContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createTrigger}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateTrigger(_ ctx: MySqlParser.CreateTriggerContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#withClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWithClause(_ ctx: MySqlParser.WithClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#withClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWithClause(_ ctx: MySqlParser.WithClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#commonTableExpressions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCommonTableExpressions(_ ctx: MySqlParser.CommonTableExpressionsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#commonTableExpressions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCommonTableExpressions(_ ctx: MySqlParser.CommonTableExpressionsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#cteName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCteName(_ ctx: MySqlParser.CteNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#cteName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCteName(_ ctx: MySqlParser.CteNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#cteColumnName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCteColumnName(_ ctx: MySqlParser.CteColumnNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#cteColumnName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCteColumnName(_ ctx: MySqlParser.CteColumnNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createView}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateView(_ ctx: MySqlParser.CreateViewContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createView}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateView(_ ctx: MySqlParser.CreateViewContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createDatabaseOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateDatabaseOption(_ ctx: MySqlParser.CreateDatabaseOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createDatabaseOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateDatabaseOption(_ ctx: MySqlParser.CreateDatabaseOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#charSet}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCharSet(_ ctx: MySqlParser.CharSetContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#charSet}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCharSet(_ ctx: MySqlParser.CharSetContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#currentUserExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCurrentUserExpression(_ ctx: MySqlParser.CurrentUserExpressionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#currentUserExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCurrentUserExpression(_ ctx: MySqlParser.CurrentUserExpressionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#ownerStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOwnerStatement(_ ctx: MySqlParser.OwnerStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#ownerStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOwnerStatement(_ ctx: MySqlParser.OwnerStatementContext)
	/**
	 * Enter a parse tree produced by the {@code preciseSchedule}
	 * labeled alternative in {@link MySqlParser#scheduleExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPreciseSchedule(_ ctx: MySqlParser.PreciseScheduleContext)
	/**
	 * Exit a parse tree produced by the {@code preciseSchedule}
	 * labeled alternative in {@link MySqlParser#scheduleExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPreciseSchedule(_ ctx: MySqlParser.PreciseScheduleContext)
	/**
	 * Enter a parse tree produced by the {@code intervalSchedule}
	 * labeled alternative in {@link MySqlParser#scheduleExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIntervalSchedule(_ ctx: MySqlParser.IntervalScheduleContext)
	/**
	 * Exit a parse tree produced by the {@code intervalSchedule}
	 * labeled alternative in {@link MySqlParser#scheduleExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIntervalSchedule(_ ctx: MySqlParser.IntervalScheduleContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#timestampValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTimestampValue(_ ctx: MySqlParser.TimestampValueContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#timestampValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTimestampValue(_ ctx: MySqlParser.TimestampValueContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#intervalExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIntervalExpr(_ ctx: MySqlParser.IntervalExprContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#intervalExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIntervalExpr(_ ctx: MySqlParser.IntervalExprContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#intervalType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIntervalType(_ ctx: MySqlParser.IntervalTypeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#intervalType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIntervalType(_ ctx: MySqlParser.IntervalTypeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#enableType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEnableType(_ ctx: MySqlParser.EnableTypeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#enableType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEnableType(_ ctx: MySqlParser.EnableTypeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#indexType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIndexType(_ ctx: MySqlParser.IndexTypeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#indexType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIndexType(_ ctx: MySqlParser.IndexTypeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#indexOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIndexOption(_ ctx: MySqlParser.IndexOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#indexOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIndexOption(_ ctx: MySqlParser.IndexOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#procedureParameter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProcedureParameter(_ ctx: MySqlParser.ProcedureParameterContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#procedureParameter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProcedureParameter(_ ctx: MySqlParser.ProcedureParameterContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#functionParameter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionParameter(_ ctx: MySqlParser.FunctionParameterContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#functionParameter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionParameter(_ ctx: MySqlParser.FunctionParameterContext)
	/**
	 * Enter a parse tree produced by the {@code routineComment}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoutineComment(_ ctx: MySqlParser.RoutineCommentContext)
	/**
	 * Exit a parse tree produced by the {@code routineComment}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoutineComment(_ ctx: MySqlParser.RoutineCommentContext)
	/**
	 * Enter a parse tree produced by the {@code routineLanguage}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoutineLanguage(_ ctx: MySqlParser.RoutineLanguageContext)
	/**
	 * Exit a parse tree produced by the {@code routineLanguage}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoutineLanguage(_ ctx: MySqlParser.RoutineLanguageContext)
	/**
	 * Enter a parse tree produced by the {@code routineBehavior}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoutineBehavior(_ ctx: MySqlParser.RoutineBehaviorContext)
	/**
	 * Exit a parse tree produced by the {@code routineBehavior}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoutineBehavior(_ ctx: MySqlParser.RoutineBehaviorContext)
	/**
	 * Enter a parse tree produced by the {@code routineData}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoutineData(_ ctx: MySqlParser.RoutineDataContext)
	/**
	 * Exit a parse tree produced by the {@code routineData}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoutineData(_ ctx: MySqlParser.RoutineDataContext)
	/**
	 * Enter a parse tree produced by the {@code routineSecurity}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoutineSecurity(_ ctx: MySqlParser.RoutineSecurityContext)
	/**
	 * Exit a parse tree produced by the {@code routineSecurity}
	 * labeled alternative in {@link MySqlParser#routineOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoutineSecurity(_ ctx: MySqlParser.RoutineSecurityContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#serverOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterServerOption(_ ctx: MySqlParser.ServerOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#serverOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitServerOption(_ ctx: MySqlParser.ServerOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createDefinitions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateDefinitions(_ ctx: MySqlParser.CreateDefinitionsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createDefinitions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateDefinitions(_ ctx: MySqlParser.CreateDefinitionsContext)
	/**
	 * Enter a parse tree produced by the {@code columnDeclaration}
	 * labeled alternative in {@link MySqlParser#createDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterColumnDeclaration(_ ctx: MySqlParser.ColumnDeclarationContext)
	/**
	 * Exit a parse tree produced by the {@code columnDeclaration}
	 * labeled alternative in {@link MySqlParser#createDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitColumnDeclaration(_ ctx: MySqlParser.ColumnDeclarationContext)
	/**
	 * Enter a parse tree produced by the {@code constraintDeclaration}
	 * labeled alternative in {@link MySqlParser#createDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstraintDeclaration(_ ctx: MySqlParser.ConstraintDeclarationContext)
	/**
	 * Exit a parse tree produced by the {@code constraintDeclaration}
	 * labeled alternative in {@link MySqlParser#createDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstraintDeclaration(_ ctx: MySqlParser.ConstraintDeclarationContext)
	/**
	 * Enter a parse tree produced by the {@code indexDeclaration}
	 * labeled alternative in {@link MySqlParser#createDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIndexDeclaration(_ ctx: MySqlParser.IndexDeclarationContext)
	/**
	 * Exit a parse tree produced by the {@code indexDeclaration}
	 * labeled alternative in {@link MySqlParser#createDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIndexDeclaration(_ ctx: MySqlParser.IndexDeclarationContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#columnDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterColumnDefinition(_ ctx: MySqlParser.ColumnDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#columnDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitColumnDefinition(_ ctx: MySqlParser.ColumnDefinitionContext)
	/**
	 * Enter a parse tree produced by the {@code nullColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNullColumnConstraint(_ ctx: MySqlParser.NullColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code nullColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNullColumnConstraint(_ ctx: MySqlParser.NullColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code defaultColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefaultColumnConstraint(_ ctx: MySqlParser.DefaultColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code defaultColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefaultColumnConstraint(_ ctx: MySqlParser.DefaultColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code visibilityColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVisibilityColumnConstraint(_ ctx: MySqlParser.VisibilityColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code visibilityColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVisibilityColumnConstraint(_ ctx: MySqlParser.VisibilityColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code invisibilityColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInvisibilityColumnConstraint(_ ctx: MySqlParser.InvisibilityColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code invisibilityColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInvisibilityColumnConstraint(_ ctx: MySqlParser.InvisibilityColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code autoIncrementColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAutoIncrementColumnConstraint(_ ctx: MySqlParser.AutoIncrementColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code autoIncrementColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAutoIncrementColumnConstraint(_ ctx: MySqlParser.AutoIncrementColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code primaryKeyColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrimaryKeyColumnConstraint(_ ctx: MySqlParser.PrimaryKeyColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code primaryKeyColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrimaryKeyColumnConstraint(_ ctx: MySqlParser.PrimaryKeyColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code uniqueKeyColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUniqueKeyColumnConstraint(_ ctx: MySqlParser.UniqueKeyColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code uniqueKeyColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUniqueKeyColumnConstraint(_ ctx: MySqlParser.UniqueKeyColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code commentColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCommentColumnConstraint(_ ctx: MySqlParser.CommentColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code commentColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCommentColumnConstraint(_ ctx: MySqlParser.CommentColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code formatColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFormatColumnConstraint(_ ctx: MySqlParser.FormatColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code formatColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFormatColumnConstraint(_ ctx: MySqlParser.FormatColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code storageColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStorageColumnConstraint(_ ctx: MySqlParser.StorageColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code storageColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStorageColumnConstraint(_ ctx: MySqlParser.StorageColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code referenceColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReferenceColumnConstraint(_ ctx: MySqlParser.ReferenceColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code referenceColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReferenceColumnConstraint(_ ctx: MySqlParser.ReferenceColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code collateColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCollateColumnConstraint(_ ctx: MySqlParser.CollateColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code collateColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCollateColumnConstraint(_ ctx: MySqlParser.CollateColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code generatedColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGeneratedColumnConstraint(_ ctx: MySqlParser.GeneratedColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code generatedColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGeneratedColumnConstraint(_ ctx: MySqlParser.GeneratedColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code serialDefaultColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSerialDefaultColumnConstraint(_ ctx: MySqlParser.SerialDefaultColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code serialDefaultColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSerialDefaultColumnConstraint(_ ctx: MySqlParser.SerialDefaultColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code checkColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCheckColumnConstraint(_ ctx: MySqlParser.CheckColumnConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code checkColumnConstraint}
	 * labeled alternative in {@link MySqlParser#columnConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCheckColumnConstraint(_ ctx: MySqlParser.CheckColumnConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code primaryKeyTableConstraint}
	 * labeled alternative in {@link MySqlParser#tableConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrimaryKeyTableConstraint(_ ctx: MySqlParser.PrimaryKeyTableConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code primaryKeyTableConstraint}
	 * labeled alternative in {@link MySqlParser#tableConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrimaryKeyTableConstraint(_ ctx: MySqlParser.PrimaryKeyTableConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code uniqueKeyTableConstraint}
	 * labeled alternative in {@link MySqlParser#tableConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUniqueKeyTableConstraint(_ ctx: MySqlParser.UniqueKeyTableConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code uniqueKeyTableConstraint}
	 * labeled alternative in {@link MySqlParser#tableConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUniqueKeyTableConstraint(_ ctx: MySqlParser.UniqueKeyTableConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code foreignKeyTableConstraint}
	 * labeled alternative in {@link MySqlParser#tableConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterForeignKeyTableConstraint(_ ctx: MySqlParser.ForeignKeyTableConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code foreignKeyTableConstraint}
	 * labeled alternative in {@link MySqlParser#tableConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitForeignKeyTableConstraint(_ ctx: MySqlParser.ForeignKeyTableConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code checkTableConstraint}
	 * labeled alternative in {@link MySqlParser#tableConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCheckTableConstraint(_ ctx: MySqlParser.CheckTableConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code checkTableConstraint}
	 * labeled alternative in {@link MySqlParser#tableConstraint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCheckTableConstraint(_ ctx: MySqlParser.CheckTableConstraintContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#referenceDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReferenceDefinition(_ ctx: MySqlParser.ReferenceDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#referenceDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReferenceDefinition(_ ctx: MySqlParser.ReferenceDefinitionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#referenceAction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReferenceAction(_ ctx: MySqlParser.ReferenceActionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#referenceAction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReferenceAction(_ ctx: MySqlParser.ReferenceActionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#referenceControlType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReferenceControlType(_ ctx: MySqlParser.ReferenceControlTypeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#referenceControlType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReferenceControlType(_ ctx: MySqlParser.ReferenceControlTypeContext)
	/**
	 * Enter a parse tree produced by the {@code simpleIndexDeclaration}
	 * labeled alternative in {@link MySqlParser#indexColumnDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleIndexDeclaration(_ ctx: MySqlParser.SimpleIndexDeclarationContext)
	/**
	 * Exit a parse tree produced by the {@code simpleIndexDeclaration}
	 * labeled alternative in {@link MySqlParser#indexColumnDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleIndexDeclaration(_ ctx: MySqlParser.SimpleIndexDeclarationContext)
	/**
	 * Enter a parse tree produced by the {@code specialIndexDeclaration}
	 * labeled alternative in {@link MySqlParser#indexColumnDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpecialIndexDeclaration(_ ctx: MySqlParser.SpecialIndexDeclarationContext)
	/**
	 * Exit a parse tree produced by the {@code specialIndexDeclaration}
	 * labeled alternative in {@link MySqlParser#indexColumnDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpecialIndexDeclaration(_ ctx: MySqlParser.SpecialIndexDeclarationContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionEngine}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionEngine(_ ctx: MySqlParser.TableOptionEngineContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionEngine}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionEngine(_ ctx: MySqlParser.TableOptionEngineContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionEngineAttribute}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionEngineAttribute(_ ctx: MySqlParser.TableOptionEngineAttributeContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionEngineAttribute}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionEngineAttribute(_ ctx: MySqlParser.TableOptionEngineAttributeContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionAutoextendSize}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionAutoextendSize(_ ctx: MySqlParser.TableOptionAutoextendSizeContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionAutoextendSize}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionAutoextendSize(_ ctx: MySqlParser.TableOptionAutoextendSizeContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionAutoIncrement}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionAutoIncrement(_ ctx: MySqlParser.TableOptionAutoIncrementContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionAutoIncrement}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionAutoIncrement(_ ctx: MySqlParser.TableOptionAutoIncrementContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionAverage}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionAverage(_ ctx: MySqlParser.TableOptionAverageContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionAverage}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionAverage(_ ctx: MySqlParser.TableOptionAverageContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionCharset}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionCharset(_ ctx: MySqlParser.TableOptionCharsetContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionCharset}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionCharset(_ ctx: MySqlParser.TableOptionCharsetContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionChecksum}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionChecksum(_ ctx: MySqlParser.TableOptionChecksumContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionChecksum}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionChecksum(_ ctx: MySqlParser.TableOptionChecksumContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionCollate}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionCollate(_ ctx: MySqlParser.TableOptionCollateContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionCollate}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionCollate(_ ctx: MySqlParser.TableOptionCollateContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionComment}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionComment(_ ctx: MySqlParser.TableOptionCommentContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionComment}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionComment(_ ctx: MySqlParser.TableOptionCommentContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionCompression}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionCompression(_ ctx: MySqlParser.TableOptionCompressionContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionCompression}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionCompression(_ ctx: MySqlParser.TableOptionCompressionContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionConnection}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionConnection(_ ctx: MySqlParser.TableOptionConnectionContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionConnection}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionConnection(_ ctx: MySqlParser.TableOptionConnectionContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionDataDirectory}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionDataDirectory(_ ctx: MySqlParser.TableOptionDataDirectoryContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionDataDirectory}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionDataDirectory(_ ctx: MySqlParser.TableOptionDataDirectoryContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionDelay}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionDelay(_ ctx: MySqlParser.TableOptionDelayContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionDelay}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionDelay(_ ctx: MySqlParser.TableOptionDelayContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionEncryption}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionEncryption(_ ctx: MySqlParser.TableOptionEncryptionContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionEncryption}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionEncryption(_ ctx: MySqlParser.TableOptionEncryptionContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionPageCompressed}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionPageCompressed(_ ctx: MySqlParser.TableOptionPageCompressedContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionPageCompressed}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionPageCompressed(_ ctx: MySqlParser.TableOptionPageCompressedContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionPageCompressionLevel}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionPageCompressionLevel(_ ctx: MySqlParser.TableOptionPageCompressionLevelContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionPageCompressionLevel}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionPageCompressionLevel(_ ctx: MySqlParser.TableOptionPageCompressionLevelContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionEncryptionKeyId}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionEncryptionKeyId(_ ctx: MySqlParser.TableOptionEncryptionKeyIdContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionEncryptionKeyId}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionEncryptionKeyId(_ ctx: MySqlParser.TableOptionEncryptionKeyIdContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionIndexDirectory}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionIndexDirectory(_ ctx: MySqlParser.TableOptionIndexDirectoryContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionIndexDirectory}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionIndexDirectory(_ ctx: MySqlParser.TableOptionIndexDirectoryContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionInsertMethod}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionInsertMethod(_ ctx: MySqlParser.TableOptionInsertMethodContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionInsertMethod}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionInsertMethod(_ ctx: MySqlParser.TableOptionInsertMethodContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionKeyBlockSize}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionKeyBlockSize(_ ctx: MySqlParser.TableOptionKeyBlockSizeContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionKeyBlockSize}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionKeyBlockSize(_ ctx: MySqlParser.TableOptionKeyBlockSizeContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionMaxRows}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionMaxRows(_ ctx: MySqlParser.TableOptionMaxRowsContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionMaxRows}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionMaxRows(_ ctx: MySqlParser.TableOptionMaxRowsContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionMinRows}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionMinRows(_ ctx: MySqlParser.TableOptionMinRowsContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionMinRows}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionMinRows(_ ctx: MySqlParser.TableOptionMinRowsContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionPackKeys}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionPackKeys(_ ctx: MySqlParser.TableOptionPackKeysContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionPackKeys}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionPackKeys(_ ctx: MySqlParser.TableOptionPackKeysContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionPassword}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionPassword(_ ctx: MySqlParser.TableOptionPasswordContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionPassword}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionPassword(_ ctx: MySqlParser.TableOptionPasswordContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionRowFormat}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionRowFormat(_ ctx: MySqlParser.TableOptionRowFormatContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionRowFormat}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionRowFormat(_ ctx: MySqlParser.TableOptionRowFormatContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionStartTransaction}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionStartTransaction(_ ctx: MySqlParser.TableOptionStartTransactionContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionStartTransaction}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionStartTransaction(_ ctx: MySqlParser.TableOptionStartTransactionContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionSecondaryEngineAttribute}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionSecondaryEngineAttribute(_ ctx: MySqlParser.TableOptionSecondaryEngineAttributeContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionSecondaryEngineAttribute}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionSecondaryEngineAttribute(_ ctx: MySqlParser.TableOptionSecondaryEngineAttributeContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionRecalculation}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionRecalculation(_ ctx: MySqlParser.TableOptionRecalculationContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionRecalculation}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionRecalculation(_ ctx: MySqlParser.TableOptionRecalculationContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionPersistent}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionPersistent(_ ctx: MySqlParser.TableOptionPersistentContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionPersistent}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionPersistent(_ ctx: MySqlParser.TableOptionPersistentContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionSamplePage}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionSamplePage(_ ctx: MySqlParser.TableOptionSamplePageContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionSamplePage}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionSamplePage(_ ctx: MySqlParser.TableOptionSamplePageContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionTablespace}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionTablespace(_ ctx: MySqlParser.TableOptionTablespaceContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionTablespace}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionTablespace(_ ctx: MySqlParser.TableOptionTablespaceContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionTableType}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionTableType(_ ctx: MySqlParser.TableOptionTableTypeContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionTableType}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionTableType(_ ctx: MySqlParser.TableOptionTableTypeContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionTransactional}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionTransactional(_ ctx: MySqlParser.TableOptionTransactionalContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionTransactional}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionTransactional(_ ctx: MySqlParser.TableOptionTransactionalContext)
	/**
	 * Enter a parse tree produced by the {@code tableOptionUnion}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableOptionUnion(_ ctx: MySqlParser.TableOptionUnionContext)
	/**
	 * Exit a parse tree produced by the {@code tableOptionUnion}
	 * labeled alternative in {@link MySqlParser#tableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableOptionUnion(_ ctx: MySqlParser.TableOptionUnionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#tableType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableType(_ ctx: MySqlParser.TableTypeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#tableType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableType(_ ctx: MySqlParser.TableTypeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#tablespaceStorage}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTablespaceStorage(_ ctx: MySqlParser.TablespaceStorageContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#tablespaceStorage}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTablespaceStorage(_ ctx: MySqlParser.TablespaceStorageContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#partitionDefinitions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionDefinitions(_ ctx: MySqlParser.PartitionDefinitionsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#partitionDefinitions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionDefinitions(_ ctx: MySqlParser.PartitionDefinitionsContext)
	/**
	 * Enter a parse tree produced by the {@code partitionFunctionHash}
	 * labeled alternative in {@link MySqlParser#partitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionFunctionHash(_ ctx: MySqlParser.PartitionFunctionHashContext)
	/**
	 * Exit a parse tree produced by the {@code partitionFunctionHash}
	 * labeled alternative in {@link MySqlParser#partitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionFunctionHash(_ ctx: MySqlParser.PartitionFunctionHashContext)
	/**
	 * Enter a parse tree produced by the {@code partitionFunctionKey}
	 * labeled alternative in {@link MySqlParser#partitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionFunctionKey(_ ctx: MySqlParser.PartitionFunctionKeyContext)
	/**
	 * Exit a parse tree produced by the {@code partitionFunctionKey}
	 * labeled alternative in {@link MySqlParser#partitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionFunctionKey(_ ctx: MySqlParser.PartitionFunctionKeyContext)
	/**
	 * Enter a parse tree produced by the {@code partitionFunctionRange}
	 * labeled alternative in {@link MySqlParser#partitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionFunctionRange(_ ctx: MySqlParser.PartitionFunctionRangeContext)
	/**
	 * Exit a parse tree produced by the {@code partitionFunctionRange}
	 * labeled alternative in {@link MySqlParser#partitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionFunctionRange(_ ctx: MySqlParser.PartitionFunctionRangeContext)
	/**
	 * Enter a parse tree produced by the {@code partitionFunctionList}
	 * labeled alternative in {@link MySqlParser#partitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionFunctionList(_ ctx: MySqlParser.PartitionFunctionListContext)
	/**
	 * Exit a parse tree produced by the {@code partitionFunctionList}
	 * labeled alternative in {@link MySqlParser#partitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionFunctionList(_ ctx: MySqlParser.PartitionFunctionListContext)
	/**
	 * Enter a parse tree produced by the {@code subPartitionFunctionHash}
	 * labeled alternative in {@link MySqlParser#subpartitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubPartitionFunctionHash(_ ctx: MySqlParser.SubPartitionFunctionHashContext)
	/**
	 * Exit a parse tree produced by the {@code subPartitionFunctionHash}
	 * labeled alternative in {@link MySqlParser#subpartitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubPartitionFunctionHash(_ ctx: MySqlParser.SubPartitionFunctionHashContext)
	/**
	 * Enter a parse tree produced by the {@code subPartitionFunctionKey}
	 * labeled alternative in {@link MySqlParser#subpartitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubPartitionFunctionKey(_ ctx: MySqlParser.SubPartitionFunctionKeyContext)
	/**
	 * Exit a parse tree produced by the {@code subPartitionFunctionKey}
	 * labeled alternative in {@link MySqlParser#subpartitionFunctionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubPartitionFunctionKey(_ ctx: MySqlParser.SubPartitionFunctionKeyContext)
	/**
	 * Enter a parse tree produced by the {@code partitionComparison}
	 * labeled alternative in {@link MySqlParser#partitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionComparison(_ ctx: MySqlParser.PartitionComparisonContext)
	/**
	 * Exit a parse tree produced by the {@code partitionComparison}
	 * labeled alternative in {@link MySqlParser#partitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionComparison(_ ctx: MySqlParser.PartitionComparisonContext)
	/**
	 * Enter a parse tree produced by the {@code partitionListAtom}
	 * labeled alternative in {@link MySqlParser#partitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionListAtom(_ ctx: MySqlParser.PartitionListAtomContext)
	/**
	 * Exit a parse tree produced by the {@code partitionListAtom}
	 * labeled alternative in {@link MySqlParser#partitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionListAtom(_ ctx: MySqlParser.PartitionListAtomContext)
	/**
	 * Enter a parse tree produced by the {@code partitionListVector}
	 * labeled alternative in {@link MySqlParser#partitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionListVector(_ ctx: MySqlParser.PartitionListVectorContext)
	/**
	 * Exit a parse tree produced by the {@code partitionListVector}
	 * labeled alternative in {@link MySqlParser#partitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionListVector(_ ctx: MySqlParser.PartitionListVectorContext)
	/**
	 * Enter a parse tree produced by the {@code partitionSimple}
	 * labeled alternative in {@link MySqlParser#partitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionSimple(_ ctx: MySqlParser.PartitionSimpleContext)
	/**
	 * Exit a parse tree produced by the {@code partitionSimple}
	 * labeled alternative in {@link MySqlParser#partitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionSimple(_ ctx: MySqlParser.PartitionSimpleContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#partitionDefinerAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionDefinerAtom(_ ctx: MySqlParser.PartitionDefinerAtomContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#partitionDefinerAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionDefinerAtom(_ ctx: MySqlParser.PartitionDefinerAtomContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#partitionDefinerVector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionDefinerVector(_ ctx: MySqlParser.PartitionDefinerVectorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#partitionDefinerVector}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionDefinerVector(_ ctx: MySqlParser.PartitionDefinerVectorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#subpartitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubpartitionDefinition(_ ctx: MySqlParser.SubpartitionDefinitionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#subpartitionDefinition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubpartitionDefinition(_ ctx: MySqlParser.SubpartitionDefinitionContext)
	/**
	 * Enter a parse tree produced by the {@code partitionOptionEngine}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionOptionEngine(_ ctx: MySqlParser.PartitionOptionEngineContext)
	/**
	 * Exit a parse tree produced by the {@code partitionOptionEngine}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionOptionEngine(_ ctx: MySqlParser.PartitionOptionEngineContext)
	/**
	 * Enter a parse tree produced by the {@code partitionOptionComment}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionOptionComment(_ ctx: MySqlParser.PartitionOptionCommentContext)
	/**
	 * Exit a parse tree produced by the {@code partitionOptionComment}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionOptionComment(_ ctx: MySqlParser.PartitionOptionCommentContext)
	/**
	 * Enter a parse tree produced by the {@code partitionOptionDataDirectory}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionOptionDataDirectory(_ ctx: MySqlParser.PartitionOptionDataDirectoryContext)
	/**
	 * Exit a parse tree produced by the {@code partitionOptionDataDirectory}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionOptionDataDirectory(_ ctx: MySqlParser.PartitionOptionDataDirectoryContext)
	/**
	 * Enter a parse tree produced by the {@code partitionOptionIndexDirectory}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionOptionIndexDirectory(_ ctx: MySqlParser.PartitionOptionIndexDirectoryContext)
	/**
	 * Exit a parse tree produced by the {@code partitionOptionIndexDirectory}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionOptionIndexDirectory(_ ctx: MySqlParser.PartitionOptionIndexDirectoryContext)
	/**
	 * Enter a parse tree produced by the {@code partitionOptionMaxRows}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionOptionMaxRows(_ ctx: MySqlParser.PartitionOptionMaxRowsContext)
	/**
	 * Exit a parse tree produced by the {@code partitionOptionMaxRows}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionOptionMaxRows(_ ctx: MySqlParser.PartitionOptionMaxRowsContext)
	/**
	 * Enter a parse tree produced by the {@code partitionOptionMinRows}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionOptionMinRows(_ ctx: MySqlParser.PartitionOptionMinRowsContext)
	/**
	 * Exit a parse tree produced by the {@code partitionOptionMinRows}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionOptionMinRows(_ ctx: MySqlParser.PartitionOptionMinRowsContext)
	/**
	 * Enter a parse tree produced by the {@code partitionOptionTablespace}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionOptionTablespace(_ ctx: MySqlParser.PartitionOptionTablespaceContext)
	/**
	 * Exit a parse tree produced by the {@code partitionOptionTablespace}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionOptionTablespace(_ ctx: MySqlParser.PartitionOptionTablespaceContext)
	/**
	 * Enter a parse tree produced by the {@code partitionOptionNodeGroup}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionOptionNodeGroup(_ ctx: MySqlParser.PartitionOptionNodeGroupContext)
	/**
	 * Exit a parse tree produced by the {@code partitionOptionNodeGroup}
	 * labeled alternative in {@link MySqlParser#partitionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionOptionNodeGroup(_ ctx: MySqlParser.PartitionOptionNodeGroupContext)
	/**
	 * Enter a parse tree produced by the {@code alterSimpleDatabase}
	 * labeled alternative in {@link MySqlParser#alterDatabase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterSimpleDatabase(_ ctx: MySqlParser.AlterSimpleDatabaseContext)
	/**
	 * Exit a parse tree produced by the {@code alterSimpleDatabase}
	 * labeled alternative in {@link MySqlParser#alterDatabase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterSimpleDatabase(_ ctx: MySqlParser.AlterSimpleDatabaseContext)
	/**
	 * Enter a parse tree produced by the {@code alterUpgradeName}
	 * labeled alternative in {@link MySqlParser#alterDatabase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterUpgradeName(_ ctx: MySqlParser.AlterUpgradeNameContext)
	/**
	 * Exit a parse tree produced by the {@code alterUpgradeName}
	 * labeled alternative in {@link MySqlParser#alterDatabase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterUpgradeName(_ ctx: MySqlParser.AlterUpgradeNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#alterEvent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterEvent(_ ctx: MySqlParser.AlterEventContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#alterEvent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterEvent(_ ctx: MySqlParser.AlterEventContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#alterFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterFunction(_ ctx: MySqlParser.AlterFunctionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#alterFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterFunction(_ ctx: MySqlParser.AlterFunctionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#alterInstance}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterInstance(_ ctx: MySqlParser.AlterInstanceContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#alterInstance}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterInstance(_ ctx: MySqlParser.AlterInstanceContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#alterLogfileGroup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterLogfileGroup(_ ctx: MySqlParser.AlterLogfileGroupContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#alterLogfileGroup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterLogfileGroup(_ ctx: MySqlParser.AlterLogfileGroupContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#alterProcedure}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterProcedure(_ ctx: MySqlParser.AlterProcedureContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#alterProcedure}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterProcedure(_ ctx: MySqlParser.AlterProcedureContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#alterServer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterServer(_ ctx: MySqlParser.AlterServerContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#alterServer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterServer(_ ctx: MySqlParser.AlterServerContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#alterTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterTable(_ ctx: MySqlParser.AlterTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#alterTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterTable(_ ctx: MySqlParser.AlterTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#alterTablespace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterTablespace(_ ctx: MySqlParser.AlterTablespaceContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#alterTablespace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterTablespace(_ ctx: MySqlParser.AlterTablespaceContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#alterView}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterView(_ ctx: MySqlParser.AlterViewContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#alterView}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterView(_ ctx: MySqlParser.AlterViewContext)
	/**
	 * Enter a parse tree produced by the {@code alterByTableOption}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByTableOption(_ ctx: MySqlParser.AlterByTableOptionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByTableOption}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByTableOption(_ ctx: MySqlParser.AlterByTableOptionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddColumn(_ ctx: MySqlParser.AlterByAddColumnContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddColumn(_ ctx: MySqlParser.AlterByAddColumnContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddColumns}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddColumns(_ ctx: MySqlParser.AlterByAddColumnsContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddColumns}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddColumns(_ ctx: MySqlParser.AlterByAddColumnsContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddIndex}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddIndex(_ ctx: MySqlParser.AlterByAddIndexContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddIndex}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddIndex(_ ctx: MySqlParser.AlterByAddIndexContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddPrimaryKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddPrimaryKey(_ ctx: MySqlParser.AlterByAddPrimaryKeyContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddPrimaryKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddPrimaryKey(_ ctx: MySqlParser.AlterByAddPrimaryKeyContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddUniqueKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddUniqueKey(_ ctx: MySqlParser.AlterByAddUniqueKeyContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddUniqueKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddUniqueKey(_ ctx: MySqlParser.AlterByAddUniqueKeyContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddSpecialIndex}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddSpecialIndex(_ ctx: MySqlParser.AlterByAddSpecialIndexContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddSpecialIndex}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddSpecialIndex(_ ctx: MySqlParser.AlterByAddSpecialIndexContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddForeignKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddForeignKey(_ ctx: MySqlParser.AlterByAddForeignKeyContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddForeignKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddForeignKey(_ ctx: MySqlParser.AlterByAddForeignKeyContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddCheckTableConstraint}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddCheckTableConstraint(_ ctx: MySqlParser.AlterByAddCheckTableConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddCheckTableConstraint}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddCheckTableConstraint(_ ctx: MySqlParser.AlterByAddCheckTableConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAlterCheckTableConstraint}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAlterCheckTableConstraint(_ ctx: MySqlParser.AlterByAlterCheckTableConstraintContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAlterCheckTableConstraint}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAlterCheckTableConstraint(_ ctx: MySqlParser.AlterByAlterCheckTableConstraintContext)
	/**
	 * Enter a parse tree produced by the {@code alterBySetAlgorithm}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterBySetAlgorithm(_ ctx: MySqlParser.AlterBySetAlgorithmContext)
	/**
	 * Exit a parse tree produced by the {@code alterBySetAlgorithm}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterBySetAlgorithm(_ ctx: MySqlParser.AlterBySetAlgorithmContext)
	/**
	 * Enter a parse tree produced by the {@code alterByChangeDefault}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByChangeDefault(_ ctx: MySqlParser.AlterByChangeDefaultContext)
	/**
	 * Exit a parse tree produced by the {@code alterByChangeDefault}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByChangeDefault(_ ctx: MySqlParser.AlterByChangeDefaultContext)
	/**
	 * Enter a parse tree produced by the {@code alterByChangeColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByChangeColumn(_ ctx: MySqlParser.AlterByChangeColumnContext)
	/**
	 * Exit a parse tree produced by the {@code alterByChangeColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByChangeColumn(_ ctx: MySqlParser.AlterByChangeColumnContext)
	/**
	 * Enter a parse tree produced by the {@code alterByRenameColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByRenameColumn(_ ctx: MySqlParser.AlterByRenameColumnContext)
	/**
	 * Exit a parse tree produced by the {@code alterByRenameColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByRenameColumn(_ ctx: MySqlParser.AlterByRenameColumnContext)
	/**
	 * Enter a parse tree produced by the {@code alterByLock}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByLock(_ ctx: MySqlParser.AlterByLockContext)
	/**
	 * Exit a parse tree produced by the {@code alterByLock}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByLock(_ ctx: MySqlParser.AlterByLockContext)
	/**
	 * Enter a parse tree produced by the {@code alterByModifyColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByModifyColumn(_ ctx: MySqlParser.AlterByModifyColumnContext)
	/**
	 * Exit a parse tree produced by the {@code alterByModifyColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByModifyColumn(_ ctx: MySqlParser.AlterByModifyColumnContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDropColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDropColumn(_ ctx: MySqlParser.AlterByDropColumnContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDropColumn}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDropColumn(_ ctx: MySqlParser.AlterByDropColumnContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDropConstraintCheck}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDropConstraintCheck(_ ctx: MySqlParser.AlterByDropConstraintCheckContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDropConstraintCheck}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDropConstraintCheck(_ ctx: MySqlParser.AlterByDropConstraintCheckContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDropPrimaryKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDropPrimaryKey(_ ctx: MySqlParser.AlterByDropPrimaryKeyContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDropPrimaryKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDropPrimaryKey(_ ctx: MySqlParser.AlterByDropPrimaryKeyContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDropIndex}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDropIndex(_ ctx: MySqlParser.AlterByDropIndexContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDropIndex}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDropIndex(_ ctx: MySqlParser.AlterByDropIndexContext)
	/**
	 * Enter a parse tree produced by the {@code alterByRenameIndex}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByRenameIndex(_ ctx: MySqlParser.AlterByRenameIndexContext)
	/**
	 * Exit a parse tree produced by the {@code alterByRenameIndex}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByRenameIndex(_ ctx: MySqlParser.AlterByRenameIndexContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAlterColumnDefault}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAlterColumnDefault(_ ctx: MySqlParser.AlterByAlterColumnDefaultContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAlterColumnDefault}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAlterColumnDefault(_ ctx: MySqlParser.AlterByAlterColumnDefaultContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAlterIndexVisibility}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAlterIndexVisibility(_ ctx: MySqlParser.AlterByAlterIndexVisibilityContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAlterIndexVisibility}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAlterIndexVisibility(_ ctx: MySqlParser.AlterByAlterIndexVisibilityContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDropForeignKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDropForeignKey(_ ctx: MySqlParser.AlterByDropForeignKeyContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDropForeignKey}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDropForeignKey(_ ctx: MySqlParser.AlterByDropForeignKeyContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDisableKeys}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDisableKeys(_ ctx: MySqlParser.AlterByDisableKeysContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDisableKeys}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDisableKeys(_ ctx: MySqlParser.AlterByDisableKeysContext)
	/**
	 * Enter a parse tree produced by the {@code alterByEnableKeys}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByEnableKeys(_ ctx: MySqlParser.AlterByEnableKeysContext)
	/**
	 * Exit a parse tree produced by the {@code alterByEnableKeys}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByEnableKeys(_ ctx: MySqlParser.AlterByEnableKeysContext)
	/**
	 * Enter a parse tree produced by the {@code alterByRename}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByRename(_ ctx: MySqlParser.AlterByRenameContext)
	/**
	 * Exit a parse tree produced by the {@code alterByRename}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByRename(_ ctx: MySqlParser.AlterByRenameContext)
	/**
	 * Enter a parse tree produced by the {@code alterByOrder}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByOrder(_ ctx: MySqlParser.AlterByOrderContext)
	/**
	 * Exit a parse tree produced by the {@code alterByOrder}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByOrder(_ ctx: MySqlParser.AlterByOrderContext)
	/**
	 * Enter a parse tree produced by the {@code alterByConvertCharset}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByConvertCharset(_ ctx: MySqlParser.AlterByConvertCharsetContext)
	/**
	 * Exit a parse tree produced by the {@code alterByConvertCharset}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByConvertCharset(_ ctx: MySqlParser.AlterByConvertCharsetContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDefaultCharset}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDefaultCharset(_ ctx: MySqlParser.AlterByDefaultCharsetContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDefaultCharset}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDefaultCharset(_ ctx: MySqlParser.AlterByDefaultCharsetContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDiscardTablespace}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDiscardTablespace(_ ctx: MySqlParser.AlterByDiscardTablespaceContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDiscardTablespace}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDiscardTablespace(_ ctx: MySqlParser.AlterByDiscardTablespaceContext)
	/**
	 * Enter a parse tree produced by the {@code alterByImportTablespace}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByImportTablespace(_ ctx: MySqlParser.AlterByImportTablespaceContext)
	/**
	 * Exit a parse tree produced by the {@code alterByImportTablespace}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByImportTablespace(_ ctx: MySqlParser.AlterByImportTablespaceContext)
	/**
	 * Enter a parse tree produced by the {@code alterByForce}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByForce(_ ctx: MySqlParser.AlterByForceContext)
	/**
	 * Exit a parse tree produced by the {@code alterByForce}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByForce(_ ctx: MySqlParser.AlterByForceContext)
	/**
	 * Enter a parse tree produced by the {@code alterByValidate}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByValidate(_ ctx: MySqlParser.AlterByValidateContext)
	/**
	 * Exit a parse tree produced by the {@code alterByValidate}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByValidate(_ ctx: MySqlParser.AlterByValidateContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddDefinitions}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddDefinitions(_ ctx: MySqlParser.AlterByAddDefinitionsContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddDefinitions}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddDefinitions(_ ctx: MySqlParser.AlterByAddDefinitionsContext)
	/**
	 * Enter a parse tree produced by the {@code alterPartition}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterPartition(_ ctx: MySqlParser.AlterPartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterPartition}
	 * labeled alternative in {@link MySqlParser#alterSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterPartition(_ ctx: MySqlParser.AlterPartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAddPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAddPartition(_ ctx: MySqlParser.AlterByAddPartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAddPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAddPartition(_ ctx: MySqlParser.AlterByAddPartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDropPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDropPartition(_ ctx: MySqlParser.AlterByDropPartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDropPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDropPartition(_ ctx: MySqlParser.AlterByDropPartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByDiscardPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByDiscardPartition(_ ctx: MySqlParser.AlterByDiscardPartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByDiscardPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByDiscardPartition(_ ctx: MySqlParser.AlterByDiscardPartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByImportPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByImportPartition(_ ctx: MySqlParser.AlterByImportPartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByImportPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByImportPartition(_ ctx: MySqlParser.AlterByImportPartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByTruncatePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByTruncatePartition(_ ctx: MySqlParser.AlterByTruncatePartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByTruncatePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByTruncatePartition(_ ctx: MySqlParser.AlterByTruncatePartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByCoalescePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByCoalescePartition(_ ctx: MySqlParser.AlterByCoalescePartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByCoalescePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByCoalescePartition(_ ctx: MySqlParser.AlterByCoalescePartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByReorganizePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByReorganizePartition(_ ctx: MySqlParser.AlterByReorganizePartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByReorganizePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByReorganizePartition(_ ctx: MySqlParser.AlterByReorganizePartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByExchangePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByExchangePartition(_ ctx: MySqlParser.AlterByExchangePartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByExchangePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByExchangePartition(_ ctx: MySqlParser.AlterByExchangePartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByAnalyzePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByAnalyzePartition(_ ctx: MySqlParser.AlterByAnalyzePartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByAnalyzePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByAnalyzePartition(_ ctx: MySqlParser.AlterByAnalyzePartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByCheckPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByCheckPartition(_ ctx: MySqlParser.AlterByCheckPartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByCheckPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByCheckPartition(_ ctx: MySqlParser.AlterByCheckPartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByOptimizePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByOptimizePartition(_ ctx: MySqlParser.AlterByOptimizePartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByOptimizePartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByOptimizePartition(_ ctx: MySqlParser.AlterByOptimizePartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByRebuildPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByRebuildPartition(_ ctx: MySqlParser.AlterByRebuildPartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByRebuildPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByRebuildPartition(_ ctx: MySqlParser.AlterByRebuildPartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByRepairPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByRepairPartition(_ ctx: MySqlParser.AlterByRepairPartitionContext)
	/**
	 * Exit a parse tree produced by the {@code alterByRepairPartition}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByRepairPartition(_ ctx: MySqlParser.AlterByRepairPartitionContext)
	/**
	 * Enter a parse tree produced by the {@code alterByRemovePartitioning}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByRemovePartitioning(_ ctx: MySqlParser.AlterByRemovePartitioningContext)
	/**
	 * Exit a parse tree produced by the {@code alterByRemovePartitioning}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByRemovePartitioning(_ ctx: MySqlParser.AlterByRemovePartitioningContext)
	/**
	 * Enter a parse tree produced by the {@code alterByUpgradePartitioning}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterByUpgradePartitioning(_ ctx: MySqlParser.AlterByUpgradePartitioningContext)
	/**
	 * Exit a parse tree produced by the {@code alterByUpgradePartitioning}
	 * labeled alternative in {@link MySqlParser#alterPartitionSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterByUpgradePartitioning(_ ctx: MySqlParser.AlterByUpgradePartitioningContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropDatabase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropDatabase(_ ctx: MySqlParser.DropDatabaseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropDatabase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropDatabase(_ ctx: MySqlParser.DropDatabaseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropEvent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropEvent(_ ctx: MySqlParser.DropEventContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropEvent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropEvent(_ ctx: MySqlParser.DropEventContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropIndex}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropIndex(_ ctx: MySqlParser.DropIndexContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropIndex}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropIndex(_ ctx: MySqlParser.DropIndexContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropLogfileGroup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropLogfileGroup(_ ctx: MySqlParser.DropLogfileGroupContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropLogfileGroup}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropLogfileGroup(_ ctx: MySqlParser.DropLogfileGroupContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropProcedure}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropProcedure(_ ctx: MySqlParser.DropProcedureContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropProcedure}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropProcedure(_ ctx: MySqlParser.DropProcedureContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropFunction(_ ctx: MySqlParser.DropFunctionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropFunction(_ ctx: MySqlParser.DropFunctionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropServer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropServer(_ ctx: MySqlParser.DropServerContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropServer}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropServer(_ ctx: MySqlParser.DropServerContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropTable(_ ctx: MySqlParser.DropTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropTable(_ ctx: MySqlParser.DropTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropTablespace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropTablespace(_ ctx: MySqlParser.DropTablespaceContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropTablespace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropTablespace(_ ctx: MySqlParser.DropTablespaceContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropTrigger}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropTrigger(_ ctx: MySqlParser.DropTriggerContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropTrigger}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropTrigger(_ ctx: MySqlParser.DropTriggerContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropView}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropView(_ ctx: MySqlParser.DropViewContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropView}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropView(_ ctx: MySqlParser.DropViewContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropRole}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropRole(_ ctx: MySqlParser.DropRoleContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropRole}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropRole(_ ctx: MySqlParser.DropRoleContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#setRole}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetRole(_ ctx: MySqlParser.SetRoleContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#setRole}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetRole(_ ctx: MySqlParser.SetRoleContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#renameTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRenameTable(_ ctx: MySqlParser.RenameTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#renameTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRenameTable(_ ctx: MySqlParser.RenameTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#renameTableClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRenameTableClause(_ ctx: MySqlParser.RenameTableClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#renameTableClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRenameTableClause(_ ctx: MySqlParser.RenameTableClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#truncateTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTruncateTable(_ ctx: MySqlParser.TruncateTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#truncateTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTruncateTable(_ ctx: MySqlParser.TruncateTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#callStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCallStatement(_ ctx: MySqlParser.CallStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#callStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCallStatement(_ ctx: MySqlParser.CallStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#deleteStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeleteStatement(_ ctx: MySqlParser.DeleteStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#deleteStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeleteStatement(_ ctx: MySqlParser.DeleteStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#doStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDoStatement(_ ctx: MySqlParser.DoStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#doStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDoStatement(_ ctx: MySqlParser.DoStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#handlerStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerStatement(_ ctx: MySqlParser.HandlerStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#handlerStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerStatement(_ ctx: MySqlParser.HandlerStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#insertStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInsertStatement(_ ctx: MySqlParser.InsertStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#insertStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInsertStatement(_ ctx: MySqlParser.InsertStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#loadDataStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLoadDataStatement(_ ctx: MySqlParser.LoadDataStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#loadDataStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLoadDataStatement(_ ctx: MySqlParser.LoadDataStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#loadXmlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLoadXmlStatement(_ ctx: MySqlParser.LoadXmlStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#loadXmlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLoadXmlStatement(_ ctx: MySqlParser.LoadXmlStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#replaceStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReplaceStatement(_ ctx: MySqlParser.ReplaceStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#replaceStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReplaceStatement(_ ctx: MySqlParser.ReplaceStatementContext)
	/**
	 * Enter a parse tree produced by the {@code simpleSelect}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleSelect(_ ctx: MySqlParser.SimpleSelectContext)
	/**
	 * Exit a parse tree produced by the {@code simpleSelect}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleSelect(_ ctx: MySqlParser.SimpleSelectContext)
	/**
	 * Enter a parse tree produced by the {@code parenthesisSelect}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParenthesisSelect(_ ctx: MySqlParser.ParenthesisSelectContext)
	/**
	 * Exit a parse tree produced by the {@code parenthesisSelect}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParenthesisSelect(_ ctx: MySqlParser.ParenthesisSelectContext)
	/**
	 * Enter a parse tree produced by the {@code unionSelect}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnionSelect(_ ctx: MySqlParser.UnionSelectContext)
	/**
	 * Exit a parse tree produced by the {@code unionSelect}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnionSelect(_ ctx: MySqlParser.UnionSelectContext)
	/**
	 * Enter a parse tree produced by the {@code unionParenthesisSelect}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnionParenthesisSelect(_ ctx: MySqlParser.UnionParenthesisSelectContext)
	/**
	 * Exit a parse tree produced by the {@code unionParenthesisSelect}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnionParenthesisSelect(_ ctx: MySqlParser.UnionParenthesisSelectContext)
	/**
	 * Enter a parse tree produced by the {@code withLateralStatement}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWithLateralStatement(_ ctx: MySqlParser.WithLateralStatementContext)
	/**
	 * Exit a parse tree produced by the {@code withLateralStatement}
	 * labeled alternative in {@link MySqlParser#selectStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWithLateralStatement(_ ctx: MySqlParser.WithLateralStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#updateStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUpdateStatement(_ ctx: MySqlParser.UpdateStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#updateStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUpdateStatement(_ ctx: MySqlParser.UpdateStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#valuesStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterValuesStatement(_ ctx: MySqlParser.ValuesStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#valuesStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitValuesStatement(_ ctx: MySqlParser.ValuesStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#insertStatementValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInsertStatementValue(_ ctx: MySqlParser.InsertStatementValueContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#insertStatementValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInsertStatementValue(_ ctx: MySqlParser.InsertStatementValueContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#updatedElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUpdatedElement(_ ctx: MySqlParser.UpdatedElementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#updatedElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUpdatedElement(_ ctx: MySqlParser.UpdatedElementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#assignmentField}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAssignmentField(_ ctx: MySqlParser.AssignmentFieldContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#assignmentField}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAssignmentField(_ ctx: MySqlParser.AssignmentFieldContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#lockClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLockClause(_ ctx: MySqlParser.LockClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#lockClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLockClause(_ ctx: MySqlParser.LockClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#singleDeleteStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSingleDeleteStatement(_ ctx: MySqlParser.SingleDeleteStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#singleDeleteStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSingleDeleteStatement(_ ctx: MySqlParser.SingleDeleteStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#multipleDeleteStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMultipleDeleteStatement(_ ctx: MySqlParser.MultipleDeleteStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#multipleDeleteStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMultipleDeleteStatement(_ ctx: MySqlParser.MultipleDeleteStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#handlerOpenStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerOpenStatement(_ ctx: MySqlParser.HandlerOpenStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#handlerOpenStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerOpenStatement(_ ctx: MySqlParser.HandlerOpenStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#handlerReadIndexStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerReadIndexStatement(_ ctx: MySqlParser.HandlerReadIndexStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#handlerReadIndexStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerReadIndexStatement(_ ctx: MySqlParser.HandlerReadIndexStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#handlerReadStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerReadStatement(_ ctx: MySqlParser.HandlerReadStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#handlerReadStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerReadStatement(_ ctx: MySqlParser.HandlerReadStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#handlerCloseStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerCloseStatement(_ ctx: MySqlParser.HandlerCloseStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#handlerCloseStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerCloseStatement(_ ctx: MySqlParser.HandlerCloseStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#singleUpdateStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSingleUpdateStatement(_ ctx: MySqlParser.SingleUpdateStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#singleUpdateStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSingleUpdateStatement(_ ctx: MySqlParser.SingleUpdateStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#multipleUpdateStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMultipleUpdateStatement(_ ctx: MySqlParser.MultipleUpdateStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#multipleUpdateStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMultipleUpdateStatement(_ ctx: MySqlParser.MultipleUpdateStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#orderByClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOrderByClause(_ ctx: MySqlParser.OrderByClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#orderByClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOrderByClause(_ ctx: MySqlParser.OrderByClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#orderByExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOrderByExpression(_ ctx: MySqlParser.OrderByExpressionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#orderByExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOrderByExpression(_ ctx: MySqlParser.OrderByExpressionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#tableSources}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableSources(_ ctx: MySqlParser.TableSourcesContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#tableSources}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableSources(_ ctx: MySqlParser.TableSourcesContext)
	/**
	 * Enter a parse tree produced by the {@code tableSourceBase}
	 * labeled alternative in {@link MySqlParser#tableSource}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableSourceBase(_ ctx: MySqlParser.TableSourceBaseContext)
	/**
	 * Exit a parse tree produced by the {@code tableSourceBase}
	 * labeled alternative in {@link MySqlParser#tableSource}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableSourceBase(_ ctx: MySqlParser.TableSourceBaseContext)
	/**
	 * Enter a parse tree produced by the {@code tableSourceNested}
	 * labeled alternative in {@link MySqlParser#tableSource}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableSourceNested(_ ctx: MySqlParser.TableSourceNestedContext)
	/**
	 * Exit a parse tree produced by the {@code tableSourceNested}
	 * labeled alternative in {@link MySqlParser#tableSource}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableSourceNested(_ ctx: MySqlParser.TableSourceNestedContext)
	/**
	 * Enter a parse tree produced by the {@code tableJson}
	 * labeled alternative in {@link MySqlParser#tableSource}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableJson(_ ctx: MySqlParser.TableJsonContext)
	/**
	 * Exit a parse tree produced by the {@code tableJson}
	 * labeled alternative in {@link MySqlParser#tableSource}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableJson(_ ctx: MySqlParser.TableJsonContext)
	/**
	 * Enter a parse tree produced by the {@code atomTableItem}
	 * labeled alternative in {@link MySqlParser#tableSourceItem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAtomTableItem(_ ctx: MySqlParser.AtomTableItemContext)
	/**
	 * Exit a parse tree produced by the {@code atomTableItem}
	 * labeled alternative in {@link MySqlParser#tableSourceItem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAtomTableItem(_ ctx: MySqlParser.AtomTableItemContext)
	/**
	 * Enter a parse tree produced by the {@code subqueryTableItem}
	 * labeled alternative in {@link MySqlParser#tableSourceItem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubqueryTableItem(_ ctx: MySqlParser.SubqueryTableItemContext)
	/**
	 * Exit a parse tree produced by the {@code subqueryTableItem}
	 * labeled alternative in {@link MySqlParser#tableSourceItem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubqueryTableItem(_ ctx: MySqlParser.SubqueryTableItemContext)
	/**
	 * Enter a parse tree produced by the {@code tableSourcesItem}
	 * labeled alternative in {@link MySqlParser#tableSourceItem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableSourcesItem(_ ctx: MySqlParser.TableSourcesItemContext)
	/**
	 * Exit a parse tree produced by the {@code tableSourcesItem}
	 * labeled alternative in {@link MySqlParser#tableSourceItem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableSourcesItem(_ ctx: MySqlParser.TableSourcesItemContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#indexHint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIndexHint(_ ctx: MySqlParser.IndexHintContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#indexHint}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIndexHint(_ ctx: MySqlParser.IndexHintContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#indexHintType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIndexHintType(_ ctx: MySqlParser.IndexHintTypeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#indexHintType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIndexHintType(_ ctx: MySqlParser.IndexHintTypeContext)
	/**
	 * Enter a parse tree produced by the {@code innerJoin}
	 * labeled alternative in {@link MySqlParser#joinPart}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInnerJoin(_ ctx: MySqlParser.InnerJoinContext)
	/**
	 * Exit a parse tree produced by the {@code innerJoin}
	 * labeled alternative in {@link MySqlParser#joinPart}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInnerJoin(_ ctx: MySqlParser.InnerJoinContext)
	/**
	 * Enter a parse tree produced by the {@code straightJoin}
	 * labeled alternative in {@link MySqlParser#joinPart}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStraightJoin(_ ctx: MySqlParser.StraightJoinContext)
	/**
	 * Exit a parse tree produced by the {@code straightJoin}
	 * labeled alternative in {@link MySqlParser#joinPart}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStraightJoin(_ ctx: MySqlParser.StraightJoinContext)
	/**
	 * Enter a parse tree produced by the {@code outerJoin}
	 * labeled alternative in {@link MySqlParser#joinPart}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOuterJoin(_ ctx: MySqlParser.OuterJoinContext)
	/**
	 * Exit a parse tree produced by the {@code outerJoin}
	 * labeled alternative in {@link MySqlParser#joinPart}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOuterJoin(_ ctx: MySqlParser.OuterJoinContext)
	/**
	 * Enter a parse tree produced by the {@code naturalJoin}
	 * labeled alternative in {@link MySqlParser#joinPart}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNaturalJoin(_ ctx: MySqlParser.NaturalJoinContext)
	/**
	 * Exit a parse tree produced by the {@code naturalJoin}
	 * labeled alternative in {@link MySqlParser#joinPart}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNaturalJoin(_ ctx: MySqlParser.NaturalJoinContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#joinSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJoinSpec(_ ctx: MySqlParser.JoinSpecContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#joinSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJoinSpec(_ ctx: MySqlParser.JoinSpecContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#queryExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQueryExpression(_ ctx: MySqlParser.QueryExpressionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#queryExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQueryExpression(_ ctx: MySqlParser.QueryExpressionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#queryExpressionNointo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQueryExpressionNointo(_ ctx: MySqlParser.QueryExpressionNointoContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#queryExpressionNointo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQueryExpressionNointo(_ ctx: MySqlParser.QueryExpressionNointoContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#querySpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQuerySpecification(_ ctx: MySqlParser.QuerySpecificationContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#querySpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQuerySpecification(_ ctx: MySqlParser.QuerySpecificationContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#querySpecificationNointo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterQuerySpecificationNointo(_ ctx: MySqlParser.QuerySpecificationNointoContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#querySpecificationNointo}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitQuerySpecificationNointo(_ ctx: MySqlParser.QuerySpecificationNointoContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#unionParenthesis}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnionParenthesis(_ ctx: MySqlParser.UnionParenthesisContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#unionParenthesis}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnionParenthesis(_ ctx: MySqlParser.UnionParenthesisContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#unionStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnionStatement(_ ctx: MySqlParser.UnionStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#unionStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnionStatement(_ ctx: MySqlParser.UnionStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#lateralStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLateralStatement(_ ctx: MySqlParser.LateralStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#lateralStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLateralStatement(_ ctx: MySqlParser.LateralStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#jsonTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJsonTable(_ ctx: MySqlParser.JsonTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#jsonTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJsonTable(_ ctx: MySqlParser.JsonTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#jsonColumnList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJsonColumnList(_ ctx: MySqlParser.JsonColumnListContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#jsonColumnList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJsonColumnList(_ ctx: MySqlParser.JsonColumnListContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#jsonColumn}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJsonColumn(_ ctx: MySqlParser.JsonColumnContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#jsonColumn}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJsonColumn(_ ctx: MySqlParser.JsonColumnContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#jsonOnEmpty}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJsonOnEmpty(_ ctx: MySqlParser.JsonOnEmptyContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#jsonOnEmpty}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJsonOnEmpty(_ ctx: MySqlParser.JsonOnEmptyContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#jsonOnError}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJsonOnError(_ ctx: MySqlParser.JsonOnErrorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#jsonOnError}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJsonOnError(_ ctx: MySqlParser.JsonOnErrorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#selectSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectSpec(_ ctx: MySqlParser.SelectSpecContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#selectSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectSpec(_ ctx: MySqlParser.SelectSpecContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#selectElements}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectElements(_ ctx: MySqlParser.SelectElementsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#selectElements}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectElements(_ ctx: MySqlParser.SelectElementsContext)
	/**
	 * Enter a parse tree produced by the {@code selectStarElement}
	 * labeled alternative in {@link MySqlParser#selectElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectStarElement(_ ctx: MySqlParser.SelectStarElementContext)
	/**
	 * Exit a parse tree produced by the {@code selectStarElement}
	 * labeled alternative in {@link MySqlParser#selectElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectStarElement(_ ctx: MySqlParser.SelectStarElementContext)
	/**
	 * Enter a parse tree produced by the {@code selectColumnElement}
	 * labeled alternative in {@link MySqlParser#selectElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectColumnElement(_ ctx: MySqlParser.SelectColumnElementContext)
	/**
	 * Exit a parse tree produced by the {@code selectColumnElement}
	 * labeled alternative in {@link MySqlParser#selectElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectColumnElement(_ ctx: MySqlParser.SelectColumnElementContext)
	/**
	 * Enter a parse tree produced by the {@code selectFunctionElement}
	 * labeled alternative in {@link MySqlParser#selectElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectFunctionElement(_ ctx: MySqlParser.SelectFunctionElementContext)
	/**
	 * Exit a parse tree produced by the {@code selectFunctionElement}
	 * labeled alternative in {@link MySqlParser#selectElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectFunctionElement(_ ctx: MySqlParser.SelectFunctionElementContext)
	/**
	 * Enter a parse tree produced by the {@code selectExpressionElement}
	 * labeled alternative in {@link MySqlParser#selectElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectExpressionElement(_ ctx: MySqlParser.SelectExpressionElementContext)
	/**
	 * Exit a parse tree produced by the {@code selectExpressionElement}
	 * labeled alternative in {@link MySqlParser#selectElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectExpressionElement(_ ctx: MySqlParser.SelectExpressionElementContext)
	/**
	 * Enter a parse tree produced by the {@code selectIntoVariables}
	 * labeled alternative in {@link MySqlParser#selectIntoExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectIntoVariables(_ ctx: MySqlParser.SelectIntoVariablesContext)
	/**
	 * Exit a parse tree produced by the {@code selectIntoVariables}
	 * labeled alternative in {@link MySqlParser#selectIntoExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectIntoVariables(_ ctx: MySqlParser.SelectIntoVariablesContext)
	/**
	 * Enter a parse tree produced by the {@code selectIntoDumpFile}
	 * labeled alternative in {@link MySqlParser#selectIntoExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectIntoDumpFile(_ ctx: MySqlParser.SelectIntoDumpFileContext)
	/**
	 * Exit a parse tree produced by the {@code selectIntoDumpFile}
	 * labeled alternative in {@link MySqlParser#selectIntoExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectIntoDumpFile(_ ctx: MySqlParser.SelectIntoDumpFileContext)
	/**
	 * Enter a parse tree produced by the {@code selectIntoTextFile}
	 * labeled alternative in {@link MySqlParser#selectIntoExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectIntoTextFile(_ ctx: MySqlParser.SelectIntoTextFileContext)
	/**
	 * Exit a parse tree produced by the {@code selectIntoTextFile}
	 * labeled alternative in {@link MySqlParser#selectIntoExpression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectIntoTextFile(_ ctx: MySqlParser.SelectIntoTextFileContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#selectFieldsInto}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectFieldsInto(_ ctx: MySqlParser.SelectFieldsIntoContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#selectFieldsInto}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectFieldsInto(_ ctx: MySqlParser.SelectFieldsIntoContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#selectLinesInto}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSelectLinesInto(_ ctx: MySqlParser.SelectLinesIntoContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#selectLinesInto}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSelectLinesInto(_ ctx: MySqlParser.SelectLinesIntoContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#fromClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFromClause(_ ctx: MySqlParser.FromClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#fromClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFromClause(_ ctx: MySqlParser.FromClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#groupByClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGroupByClause(_ ctx: MySqlParser.GroupByClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#groupByClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGroupByClause(_ ctx: MySqlParser.GroupByClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#havingClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHavingClause(_ ctx: MySqlParser.HavingClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#havingClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHavingClause(_ ctx: MySqlParser.HavingClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#windowClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWindowClause(_ ctx: MySqlParser.WindowClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#windowClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWindowClause(_ ctx: MySqlParser.WindowClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#groupByItem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGroupByItem(_ ctx: MySqlParser.GroupByItemContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#groupByItem}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGroupByItem(_ ctx: MySqlParser.GroupByItemContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#limitClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLimitClause(_ ctx: MySqlParser.LimitClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#limitClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLimitClause(_ ctx: MySqlParser.LimitClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#limitClauseAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLimitClauseAtom(_ ctx: MySqlParser.LimitClauseAtomContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#limitClauseAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLimitClauseAtom(_ ctx: MySqlParser.LimitClauseAtomContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#startTransaction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStartTransaction(_ ctx: MySqlParser.StartTransactionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#startTransaction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStartTransaction(_ ctx: MySqlParser.StartTransactionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#beginWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBeginWork(_ ctx: MySqlParser.BeginWorkContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#beginWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBeginWork(_ ctx: MySqlParser.BeginWorkContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#commitWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCommitWork(_ ctx: MySqlParser.CommitWorkContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#commitWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCommitWork(_ ctx: MySqlParser.CommitWorkContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#rollbackWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRollbackWork(_ ctx: MySqlParser.RollbackWorkContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#rollbackWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRollbackWork(_ ctx: MySqlParser.RollbackWorkContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#savepointStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSavepointStatement(_ ctx: MySqlParser.SavepointStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#savepointStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSavepointStatement(_ ctx: MySqlParser.SavepointStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#rollbackStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRollbackStatement(_ ctx: MySqlParser.RollbackStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#rollbackStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRollbackStatement(_ ctx: MySqlParser.RollbackStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#releaseStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReleaseStatement(_ ctx: MySqlParser.ReleaseStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#releaseStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReleaseStatement(_ ctx: MySqlParser.ReleaseStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#lockTables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLockTables(_ ctx: MySqlParser.LockTablesContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#lockTables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLockTables(_ ctx: MySqlParser.LockTablesContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#unlockTables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnlockTables(_ ctx: MySqlParser.UnlockTablesContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#unlockTables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnlockTables(_ ctx: MySqlParser.UnlockTablesContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#setAutocommitStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetAutocommitStatement(_ ctx: MySqlParser.SetAutocommitStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#setAutocommitStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetAutocommitStatement(_ ctx: MySqlParser.SetAutocommitStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#setTransactionStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetTransactionStatement(_ ctx: MySqlParser.SetTransactionStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#setTransactionStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetTransactionStatement(_ ctx: MySqlParser.SetTransactionStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#transactionMode}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTransactionMode(_ ctx: MySqlParser.TransactionModeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#transactionMode}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTransactionMode(_ ctx: MySqlParser.TransactionModeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#lockTableElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLockTableElement(_ ctx: MySqlParser.LockTableElementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#lockTableElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLockTableElement(_ ctx: MySqlParser.LockTableElementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#lockAction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLockAction(_ ctx: MySqlParser.LockActionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#lockAction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLockAction(_ ctx: MySqlParser.LockActionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#transactionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTransactionOption(_ ctx: MySqlParser.TransactionOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#transactionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTransactionOption(_ ctx: MySqlParser.TransactionOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#transactionLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTransactionLevel(_ ctx: MySqlParser.TransactionLevelContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#transactionLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTransactionLevel(_ ctx: MySqlParser.TransactionLevelContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#changeMaster}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterChangeMaster(_ ctx: MySqlParser.ChangeMasterContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#changeMaster}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitChangeMaster(_ ctx: MySqlParser.ChangeMasterContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#changeReplicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterChangeReplicationFilter(_ ctx: MySqlParser.ChangeReplicationFilterContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#changeReplicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitChangeReplicationFilter(_ ctx: MySqlParser.ChangeReplicationFilterContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#purgeBinaryLogs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPurgeBinaryLogs(_ ctx: MySqlParser.PurgeBinaryLogsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#purgeBinaryLogs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPurgeBinaryLogs(_ ctx: MySqlParser.PurgeBinaryLogsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#resetMaster}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterResetMaster(_ ctx: MySqlParser.ResetMasterContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#resetMaster}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitResetMaster(_ ctx: MySqlParser.ResetMasterContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#resetSlave}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterResetSlave(_ ctx: MySqlParser.ResetSlaveContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#resetSlave}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitResetSlave(_ ctx: MySqlParser.ResetSlaveContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#startSlave}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStartSlave(_ ctx: MySqlParser.StartSlaveContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#startSlave}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStartSlave(_ ctx: MySqlParser.StartSlaveContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#stopSlave}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStopSlave(_ ctx: MySqlParser.StopSlaveContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#stopSlave}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStopSlave(_ ctx: MySqlParser.StopSlaveContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#startGroupReplication}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStartGroupReplication(_ ctx: MySqlParser.StartGroupReplicationContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#startGroupReplication}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStartGroupReplication(_ ctx: MySqlParser.StartGroupReplicationContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#stopGroupReplication}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStopGroupReplication(_ ctx: MySqlParser.StopGroupReplicationContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#stopGroupReplication}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStopGroupReplication(_ ctx: MySqlParser.StopGroupReplicationContext)
	/**
	 * Enter a parse tree produced by the {@code masterStringOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMasterStringOption(_ ctx: MySqlParser.MasterStringOptionContext)
	/**
	 * Exit a parse tree produced by the {@code masterStringOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMasterStringOption(_ ctx: MySqlParser.MasterStringOptionContext)
	/**
	 * Enter a parse tree produced by the {@code masterDecimalOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMasterDecimalOption(_ ctx: MySqlParser.MasterDecimalOptionContext)
	/**
	 * Exit a parse tree produced by the {@code masterDecimalOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMasterDecimalOption(_ ctx: MySqlParser.MasterDecimalOptionContext)
	/**
	 * Enter a parse tree produced by the {@code masterBoolOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMasterBoolOption(_ ctx: MySqlParser.MasterBoolOptionContext)
	/**
	 * Exit a parse tree produced by the {@code masterBoolOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMasterBoolOption(_ ctx: MySqlParser.MasterBoolOptionContext)
	/**
	 * Enter a parse tree produced by the {@code masterRealOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMasterRealOption(_ ctx: MySqlParser.MasterRealOptionContext)
	/**
	 * Exit a parse tree produced by the {@code masterRealOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMasterRealOption(_ ctx: MySqlParser.MasterRealOptionContext)
	/**
	 * Enter a parse tree produced by the {@code masterUidListOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMasterUidListOption(_ ctx: MySqlParser.MasterUidListOptionContext)
	/**
	 * Exit a parse tree produced by the {@code masterUidListOption}
	 * labeled alternative in {@link MySqlParser#masterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMasterUidListOption(_ ctx: MySqlParser.MasterUidListOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#stringMasterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringMasterOption(_ ctx: MySqlParser.StringMasterOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#stringMasterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringMasterOption(_ ctx: MySqlParser.StringMasterOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#decimalMasterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDecimalMasterOption(_ ctx: MySqlParser.DecimalMasterOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#decimalMasterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDecimalMasterOption(_ ctx: MySqlParser.DecimalMasterOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#boolMasterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBoolMasterOption(_ ctx: MySqlParser.BoolMasterOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#boolMasterOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBoolMasterOption(_ ctx: MySqlParser.BoolMasterOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#channelOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterChannelOption(_ ctx: MySqlParser.ChannelOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#channelOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitChannelOption(_ ctx: MySqlParser.ChannelOptionContext)
	/**
	 * Enter a parse tree produced by the {@code doDbReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDoDbReplication(_ ctx: MySqlParser.DoDbReplicationContext)
	/**
	 * Exit a parse tree produced by the {@code doDbReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDoDbReplication(_ ctx: MySqlParser.DoDbReplicationContext)
	/**
	 * Enter a parse tree produced by the {@code ignoreDbReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIgnoreDbReplication(_ ctx: MySqlParser.IgnoreDbReplicationContext)
	/**
	 * Exit a parse tree produced by the {@code ignoreDbReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIgnoreDbReplication(_ ctx: MySqlParser.IgnoreDbReplicationContext)
	/**
	 * Enter a parse tree produced by the {@code doTableReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDoTableReplication(_ ctx: MySqlParser.DoTableReplicationContext)
	/**
	 * Exit a parse tree produced by the {@code doTableReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDoTableReplication(_ ctx: MySqlParser.DoTableReplicationContext)
	/**
	 * Enter a parse tree produced by the {@code ignoreTableReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIgnoreTableReplication(_ ctx: MySqlParser.IgnoreTableReplicationContext)
	/**
	 * Exit a parse tree produced by the {@code ignoreTableReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIgnoreTableReplication(_ ctx: MySqlParser.IgnoreTableReplicationContext)
	/**
	 * Enter a parse tree produced by the {@code wildDoTableReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWildDoTableReplication(_ ctx: MySqlParser.WildDoTableReplicationContext)
	/**
	 * Exit a parse tree produced by the {@code wildDoTableReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWildDoTableReplication(_ ctx: MySqlParser.WildDoTableReplicationContext)
	/**
	 * Enter a parse tree produced by the {@code wildIgnoreTableReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWildIgnoreTableReplication(_ ctx: MySqlParser.WildIgnoreTableReplicationContext)
	/**
	 * Exit a parse tree produced by the {@code wildIgnoreTableReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWildIgnoreTableReplication(_ ctx: MySqlParser.WildIgnoreTableReplicationContext)
	/**
	 * Enter a parse tree produced by the {@code rewriteDbReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRewriteDbReplication(_ ctx: MySqlParser.RewriteDbReplicationContext)
	/**
	 * Exit a parse tree produced by the {@code rewriteDbReplication}
	 * labeled alternative in {@link MySqlParser#replicationFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRewriteDbReplication(_ ctx: MySqlParser.RewriteDbReplicationContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#tablePair}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTablePair(_ ctx: MySqlParser.TablePairContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#tablePair}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTablePair(_ ctx: MySqlParser.TablePairContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#threadType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterThreadType(_ ctx: MySqlParser.ThreadTypeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#threadType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitThreadType(_ ctx: MySqlParser.ThreadTypeContext)
	/**
	 * Enter a parse tree produced by the {@code gtidsUntilOption}
	 * labeled alternative in {@link MySqlParser#untilOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGtidsUntilOption(_ ctx: MySqlParser.GtidsUntilOptionContext)
	/**
	 * Exit a parse tree produced by the {@code gtidsUntilOption}
	 * labeled alternative in {@link MySqlParser#untilOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGtidsUntilOption(_ ctx: MySqlParser.GtidsUntilOptionContext)
	/**
	 * Enter a parse tree produced by the {@code masterLogUntilOption}
	 * labeled alternative in {@link MySqlParser#untilOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMasterLogUntilOption(_ ctx: MySqlParser.MasterLogUntilOptionContext)
	/**
	 * Exit a parse tree produced by the {@code masterLogUntilOption}
	 * labeled alternative in {@link MySqlParser#untilOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMasterLogUntilOption(_ ctx: MySqlParser.MasterLogUntilOptionContext)
	/**
	 * Enter a parse tree produced by the {@code relayLogUntilOption}
	 * labeled alternative in {@link MySqlParser#untilOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRelayLogUntilOption(_ ctx: MySqlParser.RelayLogUntilOptionContext)
	/**
	 * Exit a parse tree produced by the {@code relayLogUntilOption}
	 * labeled alternative in {@link MySqlParser#untilOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRelayLogUntilOption(_ ctx: MySqlParser.RelayLogUntilOptionContext)
	/**
	 * Enter a parse tree produced by the {@code sqlGapsUntilOption}
	 * labeled alternative in {@link MySqlParser#untilOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSqlGapsUntilOption(_ ctx: MySqlParser.SqlGapsUntilOptionContext)
	/**
	 * Exit a parse tree produced by the {@code sqlGapsUntilOption}
	 * labeled alternative in {@link MySqlParser#untilOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSqlGapsUntilOption(_ ctx: MySqlParser.SqlGapsUntilOptionContext)
	/**
	 * Enter a parse tree produced by the {@code userConnectionOption}
	 * labeled alternative in {@link MySqlParser#connectionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUserConnectionOption(_ ctx: MySqlParser.UserConnectionOptionContext)
	/**
	 * Exit a parse tree produced by the {@code userConnectionOption}
	 * labeled alternative in {@link MySqlParser#connectionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUserConnectionOption(_ ctx: MySqlParser.UserConnectionOptionContext)
	/**
	 * Enter a parse tree produced by the {@code passwordConnectionOption}
	 * labeled alternative in {@link MySqlParser#connectionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPasswordConnectionOption(_ ctx: MySqlParser.PasswordConnectionOptionContext)
	/**
	 * Exit a parse tree produced by the {@code passwordConnectionOption}
	 * labeled alternative in {@link MySqlParser#connectionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPasswordConnectionOption(_ ctx: MySqlParser.PasswordConnectionOptionContext)
	/**
	 * Enter a parse tree produced by the {@code defaultAuthConnectionOption}
	 * labeled alternative in {@link MySqlParser#connectionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefaultAuthConnectionOption(_ ctx: MySqlParser.DefaultAuthConnectionOptionContext)
	/**
	 * Exit a parse tree produced by the {@code defaultAuthConnectionOption}
	 * labeled alternative in {@link MySqlParser#connectionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefaultAuthConnectionOption(_ ctx: MySqlParser.DefaultAuthConnectionOptionContext)
	/**
	 * Enter a parse tree produced by the {@code pluginDirConnectionOption}
	 * labeled alternative in {@link MySqlParser#connectionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPluginDirConnectionOption(_ ctx: MySqlParser.PluginDirConnectionOptionContext)
	/**
	 * Exit a parse tree produced by the {@code pluginDirConnectionOption}
	 * labeled alternative in {@link MySqlParser#connectionOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPluginDirConnectionOption(_ ctx: MySqlParser.PluginDirConnectionOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#gtuidSet}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGtuidSet(_ ctx: MySqlParser.GtuidSetContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#gtuidSet}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGtuidSet(_ ctx: MySqlParser.GtuidSetContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#xaStartTransaction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterXaStartTransaction(_ ctx: MySqlParser.XaStartTransactionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#xaStartTransaction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitXaStartTransaction(_ ctx: MySqlParser.XaStartTransactionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#xaEndTransaction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterXaEndTransaction(_ ctx: MySqlParser.XaEndTransactionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#xaEndTransaction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitXaEndTransaction(_ ctx: MySqlParser.XaEndTransactionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#xaPrepareStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterXaPrepareStatement(_ ctx: MySqlParser.XaPrepareStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#xaPrepareStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitXaPrepareStatement(_ ctx: MySqlParser.XaPrepareStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#xaCommitWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterXaCommitWork(_ ctx: MySqlParser.XaCommitWorkContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#xaCommitWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitXaCommitWork(_ ctx: MySqlParser.XaCommitWorkContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#xaRollbackWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterXaRollbackWork(_ ctx: MySqlParser.XaRollbackWorkContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#xaRollbackWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitXaRollbackWork(_ ctx: MySqlParser.XaRollbackWorkContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#xaRecoverWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterXaRecoverWork(_ ctx: MySqlParser.XaRecoverWorkContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#xaRecoverWork}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitXaRecoverWork(_ ctx: MySqlParser.XaRecoverWorkContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#prepareStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrepareStatement(_ ctx: MySqlParser.PrepareStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#prepareStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrepareStatement(_ ctx: MySqlParser.PrepareStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#executeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExecuteStatement(_ ctx: MySqlParser.ExecuteStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#executeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExecuteStatement(_ ctx: MySqlParser.ExecuteStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#deallocatePrepare}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeallocatePrepare(_ ctx: MySqlParser.DeallocatePrepareContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#deallocatePrepare}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeallocatePrepare(_ ctx: MySqlParser.DeallocatePrepareContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#routineBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoutineBody(_ ctx: MySqlParser.RoutineBodyContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#routineBody}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoutineBody(_ ctx: MySqlParser.RoutineBodyContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#blockStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlockStatement(_ ctx: MySqlParser.BlockStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#blockStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlockStatement(_ ctx: MySqlParser.BlockStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#caseStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCaseStatement(_ ctx: MySqlParser.CaseStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#caseStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCaseStatement(_ ctx: MySqlParser.CaseStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#ifStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIfStatement(_ ctx: MySqlParser.IfStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#ifStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIfStatement(_ ctx: MySqlParser.IfStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#iterateStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIterateStatement(_ ctx: MySqlParser.IterateStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#iterateStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIterateStatement(_ ctx: MySqlParser.IterateStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#leaveStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLeaveStatement(_ ctx: MySqlParser.LeaveStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#leaveStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLeaveStatement(_ ctx: MySqlParser.LeaveStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#loopStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLoopStatement(_ ctx: MySqlParser.LoopStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#loopStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLoopStatement(_ ctx: MySqlParser.LoopStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#repeatStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRepeatStatement(_ ctx: MySqlParser.RepeatStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#repeatStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRepeatStatement(_ ctx: MySqlParser.RepeatStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#returnStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterReturnStatement(_ ctx: MySqlParser.ReturnStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#returnStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitReturnStatement(_ ctx: MySqlParser.ReturnStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#whileStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWhileStatement(_ ctx: MySqlParser.WhileStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#whileStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWhileStatement(_ ctx: MySqlParser.WhileStatementContext)
	/**
	 * Enter a parse tree produced by the {@code CloseCursor}
	 * labeled alternative in {@link MySqlParser#cursorStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCloseCursor(_ ctx: MySqlParser.CloseCursorContext)
	/**
	 * Exit a parse tree produced by the {@code CloseCursor}
	 * labeled alternative in {@link MySqlParser#cursorStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCloseCursor(_ ctx: MySqlParser.CloseCursorContext)
	/**
	 * Enter a parse tree produced by the {@code FetchCursor}
	 * labeled alternative in {@link MySqlParser#cursorStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFetchCursor(_ ctx: MySqlParser.FetchCursorContext)
	/**
	 * Exit a parse tree produced by the {@code FetchCursor}
	 * labeled alternative in {@link MySqlParser#cursorStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFetchCursor(_ ctx: MySqlParser.FetchCursorContext)
	/**
	 * Enter a parse tree produced by the {@code OpenCursor}
	 * labeled alternative in {@link MySqlParser#cursorStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOpenCursor(_ ctx: MySqlParser.OpenCursorContext)
	/**
	 * Exit a parse tree produced by the {@code OpenCursor}
	 * labeled alternative in {@link MySqlParser#cursorStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOpenCursor(_ ctx: MySqlParser.OpenCursorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#declareVariable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclareVariable(_ ctx: MySqlParser.DeclareVariableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#declareVariable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclareVariable(_ ctx: MySqlParser.DeclareVariableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#declareCondition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclareCondition(_ ctx: MySqlParser.DeclareConditionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#declareCondition}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclareCondition(_ ctx: MySqlParser.DeclareConditionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#declareCursor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclareCursor(_ ctx: MySqlParser.DeclareCursorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#declareCursor}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclareCursor(_ ctx: MySqlParser.DeclareCursorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#declareHandler}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDeclareHandler(_ ctx: MySqlParser.DeclareHandlerContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#declareHandler}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDeclareHandler(_ ctx: MySqlParser.DeclareHandlerContext)
	/**
	 * Enter a parse tree produced by the {@code handlerConditionCode}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerConditionCode(_ ctx: MySqlParser.HandlerConditionCodeContext)
	/**
	 * Exit a parse tree produced by the {@code handlerConditionCode}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerConditionCode(_ ctx: MySqlParser.HandlerConditionCodeContext)
	/**
	 * Enter a parse tree produced by the {@code handlerConditionState}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerConditionState(_ ctx: MySqlParser.HandlerConditionStateContext)
	/**
	 * Exit a parse tree produced by the {@code handlerConditionState}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerConditionState(_ ctx: MySqlParser.HandlerConditionStateContext)
	/**
	 * Enter a parse tree produced by the {@code handlerConditionName}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerConditionName(_ ctx: MySqlParser.HandlerConditionNameContext)
	/**
	 * Exit a parse tree produced by the {@code handlerConditionName}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerConditionName(_ ctx: MySqlParser.HandlerConditionNameContext)
	/**
	 * Enter a parse tree produced by the {@code handlerConditionWarning}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerConditionWarning(_ ctx: MySqlParser.HandlerConditionWarningContext)
	/**
	 * Exit a parse tree produced by the {@code handlerConditionWarning}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerConditionWarning(_ ctx: MySqlParser.HandlerConditionWarningContext)
	/**
	 * Enter a parse tree produced by the {@code handlerConditionNotfound}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerConditionNotfound(_ ctx: MySqlParser.HandlerConditionNotfoundContext)
	/**
	 * Exit a parse tree produced by the {@code handlerConditionNotfound}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerConditionNotfound(_ ctx: MySqlParser.HandlerConditionNotfoundContext)
	/**
	 * Enter a parse tree produced by the {@code handlerConditionException}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHandlerConditionException(_ ctx: MySqlParser.HandlerConditionExceptionContext)
	/**
	 * Exit a parse tree produced by the {@code handlerConditionException}
	 * labeled alternative in {@link MySqlParser#handlerConditionValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHandlerConditionException(_ ctx: MySqlParser.HandlerConditionExceptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#procedureSqlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProcedureSqlStatement(_ ctx: MySqlParser.ProcedureSqlStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#procedureSqlStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProcedureSqlStatement(_ ctx: MySqlParser.ProcedureSqlStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#caseAlternative}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCaseAlternative(_ ctx: MySqlParser.CaseAlternativeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#caseAlternative}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCaseAlternative(_ ctx: MySqlParser.CaseAlternativeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#elifAlternative}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterElifAlternative(_ ctx: MySqlParser.ElifAlternativeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#elifAlternative}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitElifAlternative(_ ctx: MySqlParser.ElifAlternativeContext)
	/**
	 * Enter a parse tree produced by the {@code alterUserMysqlV56}
	 * labeled alternative in {@link MySqlParser#alterUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterUserMysqlV56(_ ctx: MySqlParser.AlterUserMysqlV56Context)
	/**
	 * Exit a parse tree produced by the {@code alterUserMysqlV56}
	 * labeled alternative in {@link MySqlParser#alterUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterUserMysqlV56(_ ctx: MySqlParser.AlterUserMysqlV56Context)
	/**
	 * Enter a parse tree produced by the {@code alterUserMysqlV80}
	 * labeled alternative in {@link MySqlParser#alterUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAlterUserMysqlV80(_ ctx: MySqlParser.AlterUserMysqlV80Context)
	/**
	 * Exit a parse tree produced by the {@code alterUserMysqlV80}
	 * labeled alternative in {@link MySqlParser#alterUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAlterUserMysqlV80(_ ctx: MySqlParser.AlterUserMysqlV80Context)
	/**
	 * Enter a parse tree produced by the {@code createUserMysqlV56}
	 * labeled alternative in {@link MySqlParser#createUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateUserMysqlV56(_ ctx: MySqlParser.CreateUserMysqlV56Context)
	/**
	 * Exit a parse tree produced by the {@code createUserMysqlV56}
	 * labeled alternative in {@link MySqlParser#createUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateUserMysqlV56(_ ctx: MySqlParser.CreateUserMysqlV56Context)
	/**
	 * Enter a parse tree produced by the {@code createUserMysqlV80}
	 * labeled alternative in {@link MySqlParser#createUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateUserMysqlV80(_ ctx: MySqlParser.CreateUserMysqlV80Context)
	/**
	 * Exit a parse tree produced by the {@code createUserMysqlV80}
	 * labeled alternative in {@link MySqlParser#createUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateUserMysqlV80(_ ctx: MySqlParser.CreateUserMysqlV80Context)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dropUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDropUser(_ ctx: MySqlParser.DropUserContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dropUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDropUser(_ ctx: MySqlParser.DropUserContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#grantStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGrantStatement(_ ctx: MySqlParser.GrantStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#grantStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGrantStatement(_ ctx: MySqlParser.GrantStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#roleOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoleOption(_ ctx: MySqlParser.RoleOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#roleOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoleOption(_ ctx: MySqlParser.RoleOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#grantProxy}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGrantProxy(_ ctx: MySqlParser.GrantProxyContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#grantProxy}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGrantProxy(_ ctx: MySqlParser.GrantProxyContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#renameUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRenameUser(_ ctx: MySqlParser.RenameUserContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#renameUser}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRenameUser(_ ctx: MySqlParser.RenameUserContext)
	/**
	 * Enter a parse tree produced by the {@code detailRevoke}
	 * labeled alternative in {@link MySqlParser#revokeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDetailRevoke(_ ctx: MySqlParser.DetailRevokeContext)
	/**
	 * Exit a parse tree produced by the {@code detailRevoke}
	 * labeled alternative in {@link MySqlParser#revokeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDetailRevoke(_ ctx: MySqlParser.DetailRevokeContext)
	/**
	 * Enter a parse tree produced by the {@code shortRevoke}
	 * labeled alternative in {@link MySqlParser#revokeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShortRevoke(_ ctx: MySqlParser.ShortRevokeContext)
	/**
	 * Exit a parse tree produced by the {@code shortRevoke}
	 * labeled alternative in {@link MySqlParser#revokeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShortRevoke(_ ctx: MySqlParser.ShortRevokeContext)
	/**
	 * Enter a parse tree produced by the {@code roleRevoke}
	 * labeled alternative in {@link MySqlParser#revokeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoleRevoke(_ ctx: MySqlParser.RoleRevokeContext)
	/**
	 * Exit a parse tree produced by the {@code roleRevoke}
	 * labeled alternative in {@link MySqlParser#revokeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoleRevoke(_ ctx: MySqlParser.RoleRevokeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#revokeProxy}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRevokeProxy(_ ctx: MySqlParser.RevokeProxyContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#revokeProxy}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRevokeProxy(_ ctx: MySqlParser.RevokeProxyContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#setPasswordStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetPasswordStatement(_ ctx: MySqlParser.SetPasswordStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#setPasswordStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetPasswordStatement(_ ctx: MySqlParser.SetPasswordStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#userSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUserSpecification(_ ctx: MySqlParser.UserSpecificationContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#userSpecification}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUserSpecification(_ ctx: MySqlParser.UserSpecificationContext)
	/**
	 * Enter a parse tree produced by the {@code hashAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHashAuthOption(_ ctx: MySqlParser.HashAuthOptionContext)
	/**
	 * Exit a parse tree produced by the {@code hashAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHashAuthOption(_ ctx: MySqlParser.HashAuthOptionContext)
	/**
	 * Enter a parse tree produced by the {@code randomAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRandomAuthOption(_ ctx: MySqlParser.RandomAuthOptionContext)
	/**
	 * Exit a parse tree produced by the {@code randomAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRandomAuthOption(_ ctx: MySqlParser.RandomAuthOptionContext)
	/**
	 * Enter a parse tree produced by the {@code stringAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringAuthOption(_ ctx: MySqlParser.StringAuthOptionContext)
	/**
	 * Exit a parse tree produced by the {@code stringAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringAuthOption(_ ctx: MySqlParser.StringAuthOptionContext)
	/**
	 * Enter a parse tree produced by the {@code moduleAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterModuleAuthOption(_ ctx: MySqlParser.ModuleAuthOptionContext)
	/**
	 * Exit a parse tree produced by the {@code moduleAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitModuleAuthOption(_ ctx: MySqlParser.ModuleAuthOptionContext)
	/**
	 * Enter a parse tree produced by the {@code simpleAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleAuthOption(_ ctx: MySqlParser.SimpleAuthOptionContext)
	/**
	 * Exit a parse tree produced by the {@code simpleAuthOption}
	 * labeled alternative in {@link MySqlParser#userAuthOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleAuthOption(_ ctx: MySqlParser.SimpleAuthOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#authOptionClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAuthOptionClause(_ ctx: MySqlParser.AuthOptionClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#authOptionClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAuthOptionClause(_ ctx: MySqlParser.AuthOptionClauseContext)
	/**
	 * Enter a parse tree produced by the {@code module}
	 * labeled alternative in {@link MySqlParser#authenticationRule}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterModule(_ ctx: MySqlParser.ModuleContext)
	/**
	 * Exit a parse tree produced by the {@code module}
	 * labeled alternative in {@link MySqlParser#authenticationRule}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitModule(_ ctx: MySqlParser.ModuleContext)
	/**
	 * Enter a parse tree produced by the {@code passwordModuleOption}
	 * labeled alternative in {@link MySqlParser#authenticationRule}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPasswordModuleOption(_ ctx: MySqlParser.PasswordModuleOptionContext)
	/**
	 * Exit a parse tree produced by the {@code passwordModuleOption}
	 * labeled alternative in {@link MySqlParser#authenticationRule}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPasswordModuleOption(_ ctx: MySqlParser.PasswordModuleOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#tlsOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTlsOption(_ ctx: MySqlParser.TlsOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#tlsOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTlsOption(_ ctx: MySqlParser.TlsOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#userResourceOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUserResourceOption(_ ctx: MySqlParser.UserResourceOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#userResourceOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUserResourceOption(_ ctx: MySqlParser.UserResourceOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#userPasswordOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUserPasswordOption(_ ctx: MySqlParser.UserPasswordOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#userPasswordOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUserPasswordOption(_ ctx: MySqlParser.UserPasswordOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#userLockOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUserLockOption(_ ctx: MySqlParser.UserLockOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#userLockOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUserLockOption(_ ctx: MySqlParser.UserLockOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#privelegeClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrivelegeClause(_ ctx: MySqlParser.PrivelegeClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#privelegeClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrivelegeClause(_ ctx: MySqlParser.PrivelegeClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#privilege}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrivilege(_ ctx: MySqlParser.PrivilegeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#privilege}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrivilege(_ ctx: MySqlParser.PrivilegeContext)
	/**
	 * Enter a parse tree produced by the {@code currentSchemaPriviLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCurrentSchemaPriviLevel(_ ctx: MySqlParser.CurrentSchemaPriviLevelContext)
	/**
	 * Exit a parse tree produced by the {@code currentSchemaPriviLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCurrentSchemaPriviLevel(_ ctx: MySqlParser.CurrentSchemaPriviLevelContext)
	/**
	 * Enter a parse tree produced by the {@code globalPrivLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGlobalPrivLevel(_ ctx: MySqlParser.GlobalPrivLevelContext)
	/**
	 * Exit a parse tree produced by the {@code globalPrivLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGlobalPrivLevel(_ ctx: MySqlParser.GlobalPrivLevelContext)
	/**
	 * Enter a parse tree produced by the {@code definiteSchemaPrivLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefiniteSchemaPrivLevel(_ ctx: MySqlParser.DefiniteSchemaPrivLevelContext)
	/**
	 * Exit a parse tree produced by the {@code definiteSchemaPrivLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefiniteSchemaPrivLevel(_ ctx: MySqlParser.DefiniteSchemaPrivLevelContext)
	/**
	 * Enter a parse tree produced by the {@code definiteFullTablePrivLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefiniteFullTablePrivLevel(_ ctx: MySqlParser.DefiniteFullTablePrivLevelContext)
	/**
	 * Exit a parse tree produced by the {@code definiteFullTablePrivLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefiniteFullTablePrivLevel(_ ctx: MySqlParser.DefiniteFullTablePrivLevelContext)
	/**
	 * Enter a parse tree produced by the {@code definiteFullTablePrivLevel2}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefiniteFullTablePrivLevel2(_ ctx: MySqlParser.DefiniteFullTablePrivLevel2Context)
	/**
	 * Exit a parse tree produced by the {@code definiteFullTablePrivLevel2}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefiniteFullTablePrivLevel2(_ ctx: MySqlParser.DefiniteFullTablePrivLevel2Context)
	/**
	 * Enter a parse tree produced by the {@code definiteTablePrivLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefiniteTablePrivLevel(_ ctx: MySqlParser.DefiniteTablePrivLevelContext)
	/**
	 * Exit a parse tree produced by the {@code definiteTablePrivLevel}
	 * labeled alternative in {@link MySqlParser#privilegeLevel}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefiniteTablePrivLevel(_ ctx: MySqlParser.DefiniteTablePrivLevelContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#renameUserClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRenameUserClause(_ ctx: MySqlParser.RenameUserClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#renameUserClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRenameUserClause(_ ctx: MySqlParser.RenameUserClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#analyzeTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAnalyzeTable(_ ctx: MySqlParser.AnalyzeTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#analyzeTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAnalyzeTable(_ ctx: MySqlParser.AnalyzeTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#checkTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCheckTable(_ ctx: MySqlParser.CheckTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#checkTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCheckTable(_ ctx: MySqlParser.CheckTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#checksumTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterChecksumTable(_ ctx: MySqlParser.ChecksumTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#checksumTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitChecksumTable(_ ctx: MySqlParser.ChecksumTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#optimizeTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOptimizeTable(_ ctx: MySqlParser.OptimizeTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#optimizeTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOptimizeTable(_ ctx: MySqlParser.OptimizeTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#repairTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRepairTable(_ ctx: MySqlParser.RepairTableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#repairTable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRepairTable(_ ctx: MySqlParser.RepairTableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#checkTableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCheckTableOption(_ ctx: MySqlParser.CheckTableOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#checkTableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCheckTableOption(_ ctx: MySqlParser.CheckTableOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#createUdfunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCreateUdfunction(_ ctx: MySqlParser.CreateUdfunctionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#createUdfunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCreateUdfunction(_ ctx: MySqlParser.CreateUdfunctionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#installPlugin}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInstallPlugin(_ ctx: MySqlParser.InstallPluginContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#installPlugin}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInstallPlugin(_ ctx: MySqlParser.InstallPluginContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#uninstallPlugin}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUninstallPlugin(_ ctx: MySqlParser.UninstallPluginContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#uninstallPlugin}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUninstallPlugin(_ ctx: MySqlParser.UninstallPluginContext)
	/**
	 * Enter a parse tree produced by the {@code setVariable}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetVariable(_ ctx: MySqlParser.SetVariableContext)
	/**
	 * Exit a parse tree produced by the {@code setVariable}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetVariable(_ ctx: MySqlParser.SetVariableContext)
	/**
	 * Enter a parse tree produced by the {@code setCharset}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetCharset(_ ctx: MySqlParser.SetCharsetContext)
	/**
	 * Exit a parse tree produced by the {@code setCharset}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetCharset(_ ctx: MySqlParser.SetCharsetContext)
	/**
	 * Enter a parse tree produced by the {@code setNames}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetNames(_ ctx: MySqlParser.SetNamesContext)
	/**
	 * Exit a parse tree produced by the {@code setNames}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetNames(_ ctx: MySqlParser.SetNamesContext)
	/**
	 * Enter a parse tree produced by the {@code setPassword}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetPassword(_ ctx: MySqlParser.SetPasswordContext)
	/**
	 * Exit a parse tree produced by the {@code setPassword}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetPassword(_ ctx: MySqlParser.SetPasswordContext)
	/**
	 * Enter a parse tree produced by the {@code setTransaction}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetTransaction(_ ctx: MySqlParser.SetTransactionContext)
	/**
	 * Exit a parse tree produced by the {@code setTransaction}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetTransaction(_ ctx: MySqlParser.SetTransactionContext)
	/**
	 * Enter a parse tree produced by the {@code setAutocommit}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetAutocommit(_ ctx: MySqlParser.SetAutocommitContext)
	/**
	 * Exit a parse tree produced by the {@code setAutocommit}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetAutocommit(_ ctx: MySqlParser.SetAutocommitContext)
	/**
	 * Enter a parse tree produced by the {@code setNewValueInsideTrigger}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSetNewValueInsideTrigger(_ ctx: MySqlParser.SetNewValueInsideTriggerContext)
	/**
	 * Exit a parse tree produced by the {@code setNewValueInsideTrigger}
	 * labeled alternative in {@link MySqlParser#setStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSetNewValueInsideTrigger(_ ctx: MySqlParser.SetNewValueInsideTriggerContext)
	/**
	 * Enter a parse tree produced by the {@code showMasterLogs}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowMasterLogs(_ ctx: MySqlParser.ShowMasterLogsContext)
	/**
	 * Exit a parse tree produced by the {@code showMasterLogs}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowMasterLogs(_ ctx: MySqlParser.ShowMasterLogsContext)
	/**
	 * Enter a parse tree produced by the {@code showLogEvents}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowLogEvents(_ ctx: MySqlParser.ShowLogEventsContext)
	/**
	 * Exit a parse tree produced by the {@code showLogEvents}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowLogEvents(_ ctx: MySqlParser.ShowLogEventsContext)
	/**
	 * Enter a parse tree produced by the {@code showObjectFilter}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowObjectFilter(_ ctx: MySqlParser.ShowObjectFilterContext)
	/**
	 * Exit a parse tree produced by the {@code showObjectFilter}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowObjectFilter(_ ctx: MySqlParser.ShowObjectFilterContext)
	/**
	 * Enter a parse tree produced by the {@code showColumns}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowColumns(_ ctx: MySqlParser.ShowColumnsContext)
	/**
	 * Exit a parse tree produced by the {@code showColumns}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowColumns(_ ctx: MySqlParser.ShowColumnsContext)
	/**
	 * Enter a parse tree produced by the {@code showCreateDb}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowCreateDb(_ ctx: MySqlParser.ShowCreateDbContext)
	/**
	 * Exit a parse tree produced by the {@code showCreateDb}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowCreateDb(_ ctx: MySqlParser.ShowCreateDbContext)
	/**
	 * Enter a parse tree produced by the {@code showCreateFullIdObject}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowCreateFullIdObject(_ ctx: MySqlParser.ShowCreateFullIdObjectContext)
	/**
	 * Exit a parse tree produced by the {@code showCreateFullIdObject}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowCreateFullIdObject(_ ctx: MySqlParser.ShowCreateFullIdObjectContext)
	/**
	 * Enter a parse tree produced by the {@code showCreateUser}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowCreateUser(_ ctx: MySqlParser.ShowCreateUserContext)
	/**
	 * Exit a parse tree produced by the {@code showCreateUser}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowCreateUser(_ ctx: MySqlParser.ShowCreateUserContext)
	/**
	 * Enter a parse tree produced by the {@code showEngine}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowEngine(_ ctx: MySqlParser.ShowEngineContext)
	/**
	 * Exit a parse tree produced by the {@code showEngine}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowEngine(_ ctx: MySqlParser.ShowEngineContext)
	/**
	 * Enter a parse tree produced by the {@code showGlobalInfo}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowGlobalInfo(_ ctx: MySqlParser.ShowGlobalInfoContext)
	/**
	 * Exit a parse tree produced by the {@code showGlobalInfo}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowGlobalInfo(_ ctx: MySqlParser.ShowGlobalInfoContext)
	/**
	 * Enter a parse tree produced by the {@code showErrors}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowErrors(_ ctx: MySqlParser.ShowErrorsContext)
	/**
	 * Exit a parse tree produced by the {@code showErrors}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowErrors(_ ctx: MySqlParser.ShowErrorsContext)
	/**
	 * Enter a parse tree produced by the {@code showCountErrors}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowCountErrors(_ ctx: MySqlParser.ShowCountErrorsContext)
	/**
	 * Exit a parse tree produced by the {@code showCountErrors}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowCountErrors(_ ctx: MySqlParser.ShowCountErrorsContext)
	/**
	 * Enter a parse tree produced by the {@code showSchemaFilter}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowSchemaFilter(_ ctx: MySqlParser.ShowSchemaFilterContext)
	/**
	 * Exit a parse tree produced by the {@code showSchemaFilter}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowSchemaFilter(_ ctx: MySqlParser.ShowSchemaFilterContext)
	/**
	 * Enter a parse tree produced by the {@code showRoutine}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowRoutine(_ ctx: MySqlParser.ShowRoutineContext)
	/**
	 * Exit a parse tree produced by the {@code showRoutine}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowRoutine(_ ctx: MySqlParser.ShowRoutineContext)
	/**
	 * Enter a parse tree produced by the {@code showGrants}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowGrants(_ ctx: MySqlParser.ShowGrantsContext)
	/**
	 * Exit a parse tree produced by the {@code showGrants}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowGrants(_ ctx: MySqlParser.ShowGrantsContext)
	/**
	 * Enter a parse tree produced by the {@code showIndexes}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowIndexes(_ ctx: MySqlParser.ShowIndexesContext)
	/**
	 * Exit a parse tree produced by the {@code showIndexes}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowIndexes(_ ctx: MySqlParser.ShowIndexesContext)
	/**
	 * Enter a parse tree produced by the {@code showOpenTables}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowOpenTables(_ ctx: MySqlParser.ShowOpenTablesContext)
	/**
	 * Exit a parse tree produced by the {@code showOpenTables}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowOpenTables(_ ctx: MySqlParser.ShowOpenTablesContext)
	/**
	 * Enter a parse tree produced by the {@code showProfile}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowProfile(_ ctx: MySqlParser.ShowProfileContext)
	/**
	 * Exit a parse tree produced by the {@code showProfile}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowProfile(_ ctx: MySqlParser.ShowProfileContext)
	/**
	 * Enter a parse tree produced by the {@code showSlaveStatus}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowSlaveStatus(_ ctx: MySqlParser.ShowSlaveStatusContext)
	/**
	 * Exit a parse tree produced by the {@code showSlaveStatus}
	 * labeled alternative in {@link MySqlParser#showStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowSlaveStatus(_ ctx: MySqlParser.ShowSlaveStatusContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#variableClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariableClause(_ ctx: MySqlParser.VariableClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#variableClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariableClause(_ ctx: MySqlParser.VariableClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#showCommonEntity}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowCommonEntity(_ ctx: MySqlParser.ShowCommonEntityContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#showCommonEntity}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowCommonEntity(_ ctx: MySqlParser.ShowCommonEntityContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#showFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowFilter(_ ctx: MySqlParser.ShowFilterContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#showFilter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowFilter(_ ctx: MySqlParser.ShowFilterContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#showGlobalInfoClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowGlobalInfoClause(_ ctx: MySqlParser.ShowGlobalInfoClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#showGlobalInfoClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowGlobalInfoClause(_ ctx: MySqlParser.ShowGlobalInfoClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#showSchemaEntity}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowSchemaEntity(_ ctx: MySqlParser.ShowSchemaEntityContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#showSchemaEntity}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowSchemaEntity(_ ctx: MySqlParser.ShowSchemaEntityContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#showProfileType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShowProfileType(_ ctx: MySqlParser.ShowProfileTypeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#showProfileType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShowProfileType(_ ctx: MySqlParser.ShowProfileTypeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#binlogStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBinlogStatement(_ ctx: MySqlParser.BinlogStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#binlogStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBinlogStatement(_ ctx: MySqlParser.BinlogStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#cacheIndexStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCacheIndexStatement(_ ctx: MySqlParser.CacheIndexStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#cacheIndexStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCacheIndexStatement(_ ctx: MySqlParser.CacheIndexStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#flushStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFlushStatement(_ ctx: MySqlParser.FlushStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#flushStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFlushStatement(_ ctx: MySqlParser.FlushStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#killStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterKillStatement(_ ctx: MySqlParser.KillStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#killStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitKillStatement(_ ctx: MySqlParser.KillStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#loadIndexIntoCache}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLoadIndexIntoCache(_ ctx: MySqlParser.LoadIndexIntoCacheContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#loadIndexIntoCache}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLoadIndexIntoCache(_ ctx: MySqlParser.LoadIndexIntoCacheContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#resetStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterResetStatement(_ ctx: MySqlParser.ResetStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#resetStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitResetStatement(_ ctx: MySqlParser.ResetStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#shutdownStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterShutdownStatement(_ ctx: MySqlParser.ShutdownStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#shutdownStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitShutdownStatement(_ ctx: MySqlParser.ShutdownStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#tableIndexes}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableIndexes(_ ctx: MySqlParser.TableIndexesContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#tableIndexes}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableIndexes(_ ctx: MySqlParser.TableIndexesContext)
	/**
	 * Enter a parse tree produced by the {@code simpleFlushOption}
	 * labeled alternative in {@link MySqlParser#flushOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleFlushOption(_ ctx: MySqlParser.SimpleFlushOptionContext)
	/**
	 * Exit a parse tree produced by the {@code simpleFlushOption}
	 * labeled alternative in {@link MySqlParser#flushOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleFlushOption(_ ctx: MySqlParser.SimpleFlushOptionContext)
	/**
	 * Enter a parse tree produced by the {@code channelFlushOption}
	 * labeled alternative in {@link MySqlParser#flushOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterChannelFlushOption(_ ctx: MySqlParser.ChannelFlushOptionContext)
	/**
	 * Exit a parse tree produced by the {@code channelFlushOption}
	 * labeled alternative in {@link MySqlParser#flushOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitChannelFlushOption(_ ctx: MySqlParser.ChannelFlushOptionContext)
	/**
	 * Enter a parse tree produced by the {@code tableFlushOption}
	 * labeled alternative in {@link MySqlParser#flushOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableFlushOption(_ ctx: MySqlParser.TableFlushOptionContext)
	/**
	 * Exit a parse tree produced by the {@code tableFlushOption}
	 * labeled alternative in {@link MySqlParser#flushOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableFlushOption(_ ctx: MySqlParser.TableFlushOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#flushTableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFlushTableOption(_ ctx: MySqlParser.FlushTableOptionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#flushTableOption}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFlushTableOption(_ ctx: MySqlParser.FlushTableOptionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#loadedTableIndexes}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLoadedTableIndexes(_ ctx: MySqlParser.LoadedTableIndexesContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#loadedTableIndexes}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLoadedTableIndexes(_ ctx: MySqlParser.LoadedTableIndexesContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#simpleDescribeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleDescribeStatement(_ ctx: MySqlParser.SimpleDescribeStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#simpleDescribeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleDescribeStatement(_ ctx: MySqlParser.SimpleDescribeStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#fullDescribeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFullDescribeStatement(_ ctx: MySqlParser.FullDescribeStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#fullDescribeStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFullDescribeStatement(_ ctx: MySqlParser.FullDescribeStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#helpStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHelpStatement(_ ctx: MySqlParser.HelpStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#helpStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHelpStatement(_ ctx: MySqlParser.HelpStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#useStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUseStatement(_ ctx: MySqlParser.UseStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#useStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUseStatement(_ ctx: MySqlParser.UseStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#signalStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSignalStatement(_ ctx: MySqlParser.SignalStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#signalStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSignalStatement(_ ctx: MySqlParser.SignalStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#resignalStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterResignalStatement(_ ctx: MySqlParser.ResignalStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#resignalStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitResignalStatement(_ ctx: MySqlParser.ResignalStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#signalConditionInformation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSignalConditionInformation(_ ctx: MySqlParser.SignalConditionInformationContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#signalConditionInformation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSignalConditionInformation(_ ctx: MySqlParser.SignalConditionInformationContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#withStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWithStatement(_ ctx: MySqlParser.WithStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#withStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWithStatement(_ ctx: MySqlParser.WithStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#tableStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableStatement(_ ctx: MySqlParser.TableStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#tableStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableStatement(_ ctx: MySqlParser.TableStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#diagnosticsStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDiagnosticsStatement(_ ctx: MySqlParser.DiagnosticsStatementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#diagnosticsStatement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDiagnosticsStatement(_ ctx: MySqlParser.DiagnosticsStatementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#diagnosticsConditionInformationName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDiagnosticsConditionInformationName(_ ctx: MySqlParser.DiagnosticsConditionInformationNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#diagnosticsConditionInformationName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDiagnosticsConditionInformationName(_ ctx: MySqlParser.DiagnosticsConditionInformationNameContext)
	/**
	 * Enter a parse tree produced by the {@code describeStatements}
	 * labeled alternative in {@link MySqlParser#describeObjectClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDescribeStatements(_ ctx: MySqlParser.DescribeStatementsContext)
	/**
	 * Exit a parse tree produced by the {@code describeStatements}
	 * labeled alternative in {@link MySqlParser#describeObjectClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDescribeStatements(_ ctx: MySqlParser.DescribeStatementsContext)
	/**
	 * Enter a parse tree produced by the {@code describeConnection}
	 * labeled alternative in {@link MySqlParser#describeObjectClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDescribeConnection(_ ctx: MySqlParser.DescribeConnectionContext)
	/**
	 * Exit a parse tree produced by the {@code describeConnection}
	 * labeled alternative in {@link MySqlParser#describeObjectClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDescribeConnection(_ ctx: MySqlParser.DescribeConnectionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#fullId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFullId(_ ctx: MySqlParser.FullIdContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#fullId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFullId(_ ctx: MySqlParser.FullIdContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#tableName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTableName(_ ctx: MySqlParser.TableNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#tableName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTableName(_ ctx: MySqlParser.TableNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#roleName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRoleName(_ ctx: MySqlParser.RoleNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#roleName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRoleName(_ ctx: MySqlParser.RoleNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#fullColumnName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFullColumnName(_ ctx: MySqlParser.FullColumnNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#fullColumnName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFullColumnName(_ ctx: MySqlParser.FullColumnNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#indexColumnName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIndexColumnName(_ ctx: MySqlParser.IndexColumnNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#indexColumnName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIndexColumnName(_ ctx: MySqlParser.IndexColumnNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#simpleUserName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleUserName(_ ctx: MySqlParser.SimpleUserNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#simpleUserName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleUserName(_ ctx: MySqlParser.SimpleUserNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#hostName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHostName(_ ctx: MySqlParser.HostNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#hostName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHostName(_ ctx: MySqlParser.HostNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#userName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUserName(_ ctx: MySqlParser.UserNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#userName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUserName(_ ctx: MySqlParser.UserNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#mysqlVariable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMysqlVariable(_ ctx: MySqlParser.MysqlVariableContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#mysqlVariable}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMysqlVariable(_ ctx: MySqlParser.MysqlVariableContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#charsetName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCharsetName(_ ctx: MySqlParser.CharsetNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#charsetName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCharsetName(_ ctx: MySqlParser.CharsetNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#collationName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCollationName(_ ctx: MySqlParser.CollationNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#collationName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCollationName(_ ctx: MySqlParser.CollationNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#engineName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEngineName(_ ctx: MySqlParser.EngineNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#engineName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEngineName(_ ctx: MySqlParser.EngineNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#engineNameBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterEngineNameBase(_ ctx: MySqlParser.EngineNameBaseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#engineNameBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitEngineNameBase(_ ctx: MySqlParser.EngineNameBaseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#uuidSet}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUuidSet(_ ctx: MySqlParser.UuidSetContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#uuidSet}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUuidSet(_ ctx: MySqlParser.UuidSetContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#xid}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterXid(_ ctx: MySqlParser.XidContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#xid}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitXid(_ ctx: MySqlParser.XidContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#xuidStringId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterXuidStringId(_ ctx: MySqlParser.XuidStringIdContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#xuidStringId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitXuidStringId(_ ctx: MySqlParser.XuidStringIdContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#authPlugin}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAuthPlugin(_ ctx: MySqlParser.AuthPluginContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#authPlugin}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAuthPlugin(_ ctx: MySqlParser.AuthPluginContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#uid}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUid(_ ctx: MySqlParser.UidContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#uid}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUid(_ ctx: MySqlParser.UidContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#simpleId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleId(_ ctx: MySqlParser.SimpleIdContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#simpleId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleId(_ ctx: MySqlParser.SimpleIdContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dottedId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDottedId(_ ctx: MySqlParser.DottedIdContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dottedId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDottedId(_ ctx: MySqlParser.DottedIdContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#decimalLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDecimalLiteral(_ ctx: MySqlParser.DecimalLiteralContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#decimalLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDecimalLiteral(_ ctx: MySqlParser.DecimalLiteralContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#fileSizeLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFileSizeLiteral(_ ctx: MySqlParser.FileSizeLiteralContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#fileSizeLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFileSizeLiteral(_ ctx: MySqlParser.FileSizeLiteralContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#stringLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringLiteral(_ ctx: MySqlParser.StringLiteralContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#stringLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringLiteral(_ ctx: MySqlParser.StringLiteralContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#booleanLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBooleanLiteral(_ ctx: MySqlParser.BooleanLiteralContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#booleanLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBooleanLiteral(_ ctx: MySqlParser.BooleanLiteralContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#hexadecimalLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterHexadecimalLiteral(_ ctx: MySqlParser.HexadecimalLiteralContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#hexadecimalLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitHexadecimalLiteral(_ ctx: MySqlParser.HexadecimalLiteralContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#nullNotnull}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNullNotnull(_ ctx: MySqlParser.NullNotnullContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#nullNotnull}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNullNotnull(_ ctx: MySqlParser.NullNotnullContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#constant}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstant(_ ctx: MySqlParser.ConstantContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#constant}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstant(_ ctx: MySqlParser.ConstantContext)
	/**
	 * Enter a parse tree produced by the {@code stringDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringDataType(_ ctx: MySqlParser.StringDataTypeContext)
	/**
	 * Exit a parse tree produced by the {@code stringDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringDataType(_ ctx: MySqlParser.StringDataTypeContext)
	/**
	 * Enter a parse tree produced by the {@code nationalVaryingStringDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNationalVaryingStringDataType(_ ctx: MySqlParser.NationalVaryingStringDataTypeContext)
	/**
	 * Exit a parse tree produced by the {@code nationalVaryingStringDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNationalVaryingStringDataType(_ ctx: MySqlParser.NationalVaryingStringDataTypeContext)
	/**
	 * Enter a parse tree produced by the {@code nationalStringDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNationalStringDataType(_ ctx: MySqlParser.NationalStringDataTypeContext)
	/**
	 * Exit a parse tree produced by the {@code nationalStringDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNationalStringDataType(_ ctx: MySqlParser.NationalStringDataTypeContext)
	/**
	 * Enter a parse tree produced by the {@code dimensionDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDimensionDataType(_ ctx: MySqlParser.DimensionDataTypeContext)
	/**
	 * Exit a parse tree produced by the {@code dimensionDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDimensionDataType(_ ctx: MySqlParser.DimensionDataTypeContext)
	/**
	 * Enter a parse tree produced by the {@code simpleDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleDataType(_ ctx: MySqlParser.SimpleDataTypeContext)
	/**
	 * Exit a parse tree produced by the {@code simpleDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleDataType(_ ctx: MySqlParser.SimpleDataTypeContext)
	/**
	 * Enter a parse tree produced by the {@code collectionDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCollectionDataType(_ ctx: MySqlParser.CollectionDataTypeContext)
	/**
	 * Exit a parse tree produced by the {@code collectionDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCollectionDataType(_ ctx: MySqlParser.CollectionDataTypeContext)
	/**
	 * Enter a parse tree produced by the {@code spatialDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpatialDataType(_ ctx: MySqlParser.SpatialDataTypeContext)
	/**
	 * Exit a parse tree produced by the {@code spatialDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpatialDataType(_ ctx: MySqlParser.SpatialDataTypeContext)
	/**
	 * Enter a parse tree produced by the {@code longVarcharDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLongVarcharDataType(_ ctx: MySqlParser.LongVarcharDataTypeContext)
	/**
	 * Exit a parse tree produced by the {@code longVarcharDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLongVarcharDataType(_ ctx: MySqlParser.LongVarcharDataTypeContext)
	/**
	 * Enter a parse tree produced by the {@code longVarbinaryDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLongVarbinaryDataType(_ ctx: MySqlParser.LongVarbinaryDataTypeContext)
	/**
	 * Exit a parse tree produced by the {@code longVarbinaryDataType}
	 * labeled alternative in {@link MySqlParser#dataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLongVarbinaryDataType(_ ctx: MySqlParser.LongVarbinaryDataTypeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#collectionOptions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCollectionOptions(_ ctx: MySqlParser.CollectionOptionsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#collectionOptions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCollectionOptions(_ ctx: MySqlParser.CollectionOptionsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#convertedDataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConvertedDataType(_ ctx: MySqlParser.ConvertedDataTypeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#convertedDataType}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConvertedDataType(_ ctx: MySqlParser.ConvertedDataTypeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#lengthOneDimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLengthOneDimension(_ ctx: MySqlParser.LengthOneDimensionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#lengthOneDimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLengthOneDimension(_ ctx: MySqlParser.LengthOneDimensionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#lengthTwoDimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLengthTwoDimension(_ ctx: MySqlParser.LengthTwoDimensionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#lengthTwoDimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLengthTwoDimension(_ ctx: MySqlParser.LengthTwoDimensionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#lengthTwoOptionalDimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLengthTwoOptionalDimension(_ ctx: MySqlParser.LengthTwoOptionalDimensionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#lengthTwoOptionalDimension}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLengthTwoOptionalDimension(_ ctx: MySqlParser.LengthTwoOptionalDimensionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#uidList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUidList(_ ctx: MySqlParser.UidListContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#uidList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUidList(_ ctx: MySqlParser.UidListContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#fullColumnNameList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFullColumnNameList(_ ctx: MySqlParser.FullColumnNameListContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#fullColumnNameList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFullColumnNameList(_ ctx: MySqlParser.FullColumnNameListContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#tables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTables(_ ctx: MySqlParser.TablesContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#tables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTables(_ ctx: MySqlParser.TablesContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#indexColumnNames}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIndexColumnNames(_ ctx: MySqlParser.IndexColumnNamesContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#indexColumnNames}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIndexColumnNames(_ ctx: MySqlParser.IndexColumnNamesContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#expressions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpressions(_ ctx: MySqlParser.ExpressionsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#expressions}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpressions(_ ctx: MySqlParser.ExpressionsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#expressionsWithDefaults}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpressionsWithDefaults(_ ctx: MySqlParser.ExpressionsWithDefaultsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#expressionsWithDefaults}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpressionsWithDefaults(_ ctx: MySqlParser.ExpressionsWithDefaultsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#constants}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstants(_ ctx: MySqlParser.ConstantsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#constants}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstants(_ ctx: MySqlParser.ConstantsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#simpleStrings}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleStrings(_ ctx: MySqlParser.SimpleStringsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#simpleStrings}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleStrings(_ ctx: MySqlParser.SimpleStringsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#userVariables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUserVariables(_ ctx: MySqlParser.UserVariablesContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#userVariables}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUserVariables(_ ctx: MySqlParser.UserVariablesContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#defaultValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDefaultValue(_ ctx: MySqlParser.DefaultValueContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#defaultValue}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDefaultValue(_ ctx: MySqlParser.DefaultValueContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#currentTimestamp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCurrentTimestamp(_ ctx: MySqlParser.CurrentTimestampContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#currentTimestamp}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCurrentTimestamp(_ ctx: MySqlParser.CurrentTimestampContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#expressionOrDefault}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpressionOrDefault(_ ctx: MySqlParser.ExpressionOrDefaultContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#expressionOrDefault}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpressionOrDefault(_ ctx: MySqlParser.ExpressionOrDefaultContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#ifExists}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIfExists(_ ctx: MySqlParser.IfExistsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#ifExists}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIfExists(_ ctx: MySqlParser.IfExistsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#ifNotExists}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIfNotExists(_ ctx: MySqlParser.IfNotExistsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#ifNotExists}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIfNotExists(_ ctx: MySqlParser.IfNotExistsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#orReplace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOrReplace(_ ctx: MySqlParser.OrReplaceContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#orReplace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOrReplace(_ ctx: MySqlParser.OrReplaceContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#waitNowaitClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWaitNowaitClause(_ ctx: MySqlParser.WaitNowaitClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#waitNowaitClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWaitNowaitClause(_ ctx: MySqlParser.WaitNowaitClauseContext)
	/**
	 * Enter a parse tree produced by the {@code specificFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSpecificFunctionCall(_ ctx: MySqlParser.SpecificFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code specificFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSpecificFunctionCall(_ ctx: MySqlParser.SpecificFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code aggregateFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAggregateFunctionCall(_ ctx: MySqlParser.AggregateFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code aggregateFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAggregateFunctionCall(_ ctx: MySqlParser.AggregateFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code nonAggregateFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNonAggregateFunctionCall(_ ctx: MySqlParser.NonAggregateFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code nonAggregateFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNonAggregateFunctionCall(_ ctx: MySqlParser.NonAggregateFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code scalarFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterScalarFunctionCall(_ ctx: MySqlParser.ScalarFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code scalarFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitScalarFunctionCall(_ ctx: MySqlParser.ScalarFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code udfFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUdfFunctionCall(_ ctx: MySqlParser.UdfFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code udfFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUdfFunctionCall(_ ctx: MySqlParser.UdfFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code passwordFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPasswordFunctionCall(_ ctx: MySqlParser.PasswordFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code passwordFunctionCall}
	 * labeled alternative in {@link MySqlParser#functionCall}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPasswordFunctionCall(_ ctx: MySqlParser.PasswordFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code simpleFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSimpleFunctionCall(_ ctx: MySqlParser.SimpleFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code simpleFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSimpleFunctionCall(_ ctx: MySqlParser.SimpleFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code currentUser}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCurrentUser(_ ctx: MySqlParser.CurrentUserContext)
	/**
	 * Exit a parse tree produced by the {@code currentUser}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCurrentUser(_ ctx: MySqlParser.CurrentUserContext)
	/**
	 * Enter a parse tree produced by the {@code dataTypeFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDataTypeFunctionCall(_ ctx: MySqlParser.DataTypeFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code dataTypeFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDataTypeFunctionCall(_ ctx: MySqlParser.DataTypeFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code valuesFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterValuesFunctionCall(_ ctx: MySqlParser.ValuesFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code valuesFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitValuesFunctionCall(_ ctx: MySqlParser.ValuesFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code caseExpressionFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCaseExpressionFunctionCall(_ ctx: MySqlParser.CaseExpressionFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code caseExpressionFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCaseExpressionFunctionCall(_ ctx: MySqlParser.CaseExpressionFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code caseFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCaseFunctionCall(_ ctx: MySqlParser.CaseFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code caseFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCaseFunctionCall(_ ctx: MySqlParser.CaseFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code charFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCharFunctionCall(_ ctx: MySqlParser.CharFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code charFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCharFunctionCall(_ ctx: MySqlParser.CharFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code positionFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPositionFunctionCall(_ ctx: MySqlParser.PositionFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code positionFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPositionFunctionCall(_ ctx: MySqlParser.PositionFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code substrFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubstrFunctionCall(_ ctx: MySqlParser.SubstrFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code substrFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubstrFunctionCall(_ ctx: MySqlParser.SubstrFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code trimFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTrimFunctionCall(_ ctx: MySqlParser.TrimFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code trimFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTrimFunctionCall(_ ctx: MySqlParser.TrimFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code weightFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWeightFunctionCall(_ ctx: MySqlParser.WeightFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code weightFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWeightFunctionCall(_ ctx: MySqlParser.WeightFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code extractFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExtractFunctionCall(_ ctx: MySqlParser.ExtractFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code extractFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExtractFunctionCall(_ ctx: MySqlParser.ExtractFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code getFormatFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterGetFormatFunctionCall(_ ctx: MySqlParser.GetFormatFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code getFormatFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitGetFormatFunctionCall(_ ctx: MySqlParser.GetFormatFunctionCallContext)
	/**
	 * Enter a parse tree produced by the {@code jsonValueFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJsonValueFunctionCall(_ ctx: MySqlParser.JsonValueFunctionCallContext)
	/**
	 * Exit a parse tree produced by the {@code jsonValueFunctionCall}
	 * labeled alternative in {@link MySqlParser#specificFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJsonValueFunctionCall(_ ctx: MySqlParser.JsonValueFunctionCallContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#caseFuncAlternative}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCaseFuncAlternative(_ ctx: MySqlParser.CaseFuncAlternativeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#caseFuncAlternative}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCaseFuncAlternative(_ ctx: MySqlParser.CaseFuncAlternativeContext)
	/**
	 * Enter a parse tree produced by the {@code levelWeightList}
	 * labeled alternative in {@link MySqlParser#levelsInWeightString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLevelWeightList(_ ctx: MySqlParser.LevelWeightListContext)
	/**
	 * Exit a parse tree produced by the {@code levelWeightList}
	 * labeled alternative in {@link MySqlParser#levelsInWeightString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLevelWeightList(_ ctx: MySqlParser.LevelWeightListContext)
	/**
	 * Enter a parse tree produced by the {@code levelWeightRange}
	 * labeled alternative in {@link MySqlParser#levelsInWeightString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLevelWeightRange(_ ctx: MySqlParser.LevelWeightRangeContext)
	/**
	 * Exit a parse tree produced by the {@code levelWeightRange}
	 * labeled alternative in {@link MySqlParser#levelsInWeightString}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLevelWeightRange(_ ctx: MySqlParser.LevelWeightRangeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#levelInWeightListElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLevelInWeightListElement(_ ctx: MySqlParser.LevelInWeightListElementContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#levelInWeightListElement}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLevelInWeightListElement(_ ctx: MySqlParser.LevelInWeightListElementContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#aggregateWindowedFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAggregateWindowedFunction(_ ctx: MySqlParser.AggregateWindowedFunctionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#aggregateWindowedFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAggregateWindowedFunction(_ ctx: MySqlParser.AggregateWindowedFunctionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#nonAggregateWindowedFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNonAggregateWindowedFunction(_ ctx: MySqlParser.NonAggregateWindowedFunctionContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#nonAggregateWindowedFunction}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNonAggregateWindowedFunction(_ ctx: MySqlParser.NonAggregateWindowedFunctionContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#overClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOverClause(_ ctx: MySqlParser.OverClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#overClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOverClause(_ ctx: MySqlParser.OverClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#windowSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWindowSpec(_ ctx: MySqlParser.WindowSpecContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#windowSpec}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWindowSpec(_ ctx: MySqlParser.WindowSpecContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#windowName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterWindowName(_ ctx: MySqlParser.WindowNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#windowName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitWindowName(_ ctx: MySqlParser.WindowNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#frameClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFrameClause(_ ctx: MySqlParser.FrameClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#frameClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFrameClause(_ ctx: MySqlParser.FrameClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#frameUnits}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFrameUnits(_ ctx: MySqlParser.FrameUnitsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#frameUnits}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFrameUnits(_ ctx: MySqlParser.FrameUnitsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#frameExtent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFrameExtent(_ ctx: MySqlParser.FrameExtentContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#frameExtent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFrameExtent(_ ctx: MySqlParser.FrameExtentContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#frameBetween}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFrameBetween(_ ctx: MySqlParser.FrameBetweenContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#frameBetween}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFrameBetween(_ ctx: MySqlParser.FrameBetweenContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#frameRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFrameRange(_ ctx: MySqlParser.FrameRangeContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#frameRange}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFrameRange(_ ctx: MySqlParser.FrameRangeContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#partitionClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPartitionClause(_ ctx: MySqlParser.PartitionClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#partitionClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPartitionClause(_ ctx: MySqlParser.PartitionClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#scalarFunctionName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterScalarFunctionName(_ ctx: MySqlParser.ScalarFunctionNameContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#scalarFunctionName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitScalarFunctionName(_ ctx: MySqlParser.ScalarFunctionNameContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#passwordFunctionClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPasswordFunctionClause(_ ctx: MySqlParser.PasswordFunctionClauseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#passwordFunctionClause}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPasswordFunctionClause(_ ctx: MySqlParser.PasswordFunctionClauseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#functionArgs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionArgs(_ ctx: MySqlParser.FunctionArgsContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#functionArgs}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionArgs(_ ctx: MySqlParser.FunctionArgsContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#functionArg}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionArg(_ ctx: MySqlParser.FunctionArgContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#functionArg}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionArg(_ ctx: MySqlParser.FunctionArgContext)
	/**
	 * Enter a parse tree produced by the {@code isExpression}
	 * labeled alternative in {@link MySqlParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIsExpression(_ ctx: MySqlParser.IsExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code isExpression}
	 * labeled alternative in {@link MySqlParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIsExpression(_ ctx: MySqlParser.IsExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code notExpression}
	 * labeled alternative in {@link MySqlParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNotExpression(_ ctx: MySqlParser.NotExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code notExpression}
	 * labeled alternative in {@link MySqlParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNotExpression(_ ctx: MySqlParser.NotExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code logicalExpression}
	 * labeled alternative in {@link MySqlParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLogicalExpression(_ ctx: MySqlParser.LogicalExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code logicalExpression}
	 * labeled alternative in {@link MySqlParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLogicalExpression(_ ctx: MySqlParser.LogicalExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code predicateExpression}
	 * labeled alternative in {@link MySqlParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPredicateExpression(_ ctx: MySqlParser.PredicateExpressionContext)
	/**
	 * Exit a parse tree produced by the {@code predicateExpression}
	 * labeled alternative in {@link MySqlParser#expression}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPredicateExpression(_ ctx: MySqlParser.PredicateExpressionContext)
	/**
	 * Enter a parse tree produced by the {@code soundsLikePredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSoundsLikePredicate(_ ctx: MySqlParser.SoundsLikePredicateContext)
	/**
	 * Exit a parse tree produced by the {@code soundsLikePredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSoundsLikePredicate(_ ctx: MySqlParser.SoundsLikePredicateContext)
	/**
	 * Enter a parse tree produced by the {@code expressionAtomPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpressionAtomPredicate(_ ctx: MySqlParser.ExpressionAtomPredicateContext)
	/**
	 * Exit a parse tree produced by the {@code expressionAtomPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpressionAtomPredicate(_ ctx: MySqlParser.ExpressionAtomPredicateContext)
	/**
	 * Enter a parse tree produced by the {@code subqueryComparisonPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubqueryComparisonPredicate(_ ctx: MySqlParser.SubqueryComparisonPredicateContext)
	/**
	 * Exit a parse tree produced by the {@code subqueryComparisonPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubqueryComparisonPredicate(_ ctx: MySqlParser.SubqueryComparisonPredicateContext)
	/**
	 * Enter a parse tree produced by the {@code jsonMemberOfPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJsonMemberOfPredicate(_ ctx: MySqlParser.JsonMemberOfPredicateContext)
	/**
	 * Exit a parse tree produced by the {@code jsonMemberOfPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJsonMemberOfPredicate(_ ctx: MySqlParser.JsonMemberOfPredicateContext)
	/**
	 * Enter a parse tree produced by the {@code binaryComparisonPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBinaryComparisonPredicate(_ ctx: MySqlParser.BinaryComparisonPredicateContext)
	/**
	 * Exit a parse tree produced by the {@code binaryComparisonPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBinaryComparisonPredicate(_ ctx: MySqlParser.BinaryComparisonPredicateContext)
	/**
	 * Enter a parse tree produced by the {@code inPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterInPredicate(_ ctx: MySqlParser.InPredicateContext)
	/**
	 * Exit a parse tree produced by the {@code inPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitInPredicate(_ ctx: MySqlParser.InPredicateContext)
	/**
	 * Enter a parse tree produced by the {@code betweenPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBetweenPredicate(_ ctx: MySqlParser.BetweenPredicateContext)
	/**
	 * Exit a parse tree produced by the {@code betweenPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBetweenPredicate(_ ctx: MySqlParser.BetweenPredicateContext)
	/**
	 * Enter a parse tree produced by the {@code isNullPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIsNullPredicate(_ ctx: MySqlParser.IsNullPredicateContext)
	/**
	 * Exit a parse tree produced by the {@code isNullPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIsNullPredicate(_ ctx: MySqlParser.IsNullPredicateContext)
	/**
	 * Enter a parse tree produced by the {@code likePredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLikePredicate(_ ctx: MySqlParser.LikePredicateContext)
	/**
	 * Exit a parse tree produced by the {@code likePredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLikePredicate(_ ctx: MySqlParser.LikePredicateContext)
	/**
	 * Enter a parse tree produced by the {@code regexpPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRegexpPredicate(_ ctx: MySqlParser.RegexpPredicateContext)
	/**
	 * Exit a parse tree produced by the {@code regexpPredicate}
	 * labeled alternative in {@link MySqlParser#predicate}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRegexpPredicate(_ ctx: MySqlParser.RegexpPredicateContext)
	/**
	 * Enter a parse tree produced by the {@code unaryExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnaryExpressionAtom(_ ctx: MySqlParser.UnaryExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code unaryExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnaryExpressionAtom(_ ctx: MySqlParser.UnaryExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code collateExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCollateExpressionAtom(_ ctx: MySqlParser.CollateExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code collateExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCollateExpressionAtom(_ ctx: MySqlParser.CollateExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code variableAssignExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVariableAssignExpressionAtom(_ ctx: MySqlParser.VariableAssignExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code variableAssignExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVariableAssignExpressionAtom(_ ctx: MySqlParser.VariableAssignExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code mysqlVariableExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMysqlVariableExpressionAtom(_ ctx: MySqlParser.MysqlVariableExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code mysqlVariableExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMysqlVariableExpressionAtom(_ ctx: MySqlParser.MysqlVariableExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code nestedExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNestedExpressionAtom(_ ctx: MySqlParser.NestedExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code nestedExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNestedExpressionAtom(_ ctx: MySqlParser.NestedExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code nestedRowExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNestedRowExpressionAtom(_ ctx: MySqlParser.NestedRowExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code nestedRowExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNestedRowExpressionAtom(_ ctx: MySqlParser.NestedRowExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code mathExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMathExpressionAtom(_ ctx: MySqlParser.MathExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code mathExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMathExpressionAtom(_ ctx: MySqlParser.MathExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code existsExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExistsExpressionAtom(_ ctx: MySqlParser.ExistsExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code existsExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExistsExpressionAtom(_ ctx: MySqlParser.ExistsExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code intervalExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIntervalExpressionAtom(_ ctx: MySqlParser.IntervalExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code intervalExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIntervalExpressionAtom(_ ctx: MySqlParser.IntervalExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code jsonExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJsonExpressionAtom(_ ctx: MySqlParser.JsonExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code jsonExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJsonExpressionAtom(_ ctx: MySqlParser.JsonExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code subqueryExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSubqueryExpressionAtom(_ ctx: MySqlParser.SubqueryExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code subqueryExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSubqueryExpressionAtom(_ ctx: MySqlParser.SubqueryExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code constantExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterConstantExpressionAtom(_ ctx: MySqlParser.ConstantExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code constantExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitConstantExpressionAtom(_ ctx: MySqlParser.ConstantExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code functionCallExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionCallExpressionAtom(_ ctx: MySqlParser.FunctionCallExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code functionCallExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionCallExpressionAtom(_ ctx: MySqlParser.FunctionCallExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code binaryExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBinaryExpressionAtom(_ ctx: MySqlParser.BinaryExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code binaryExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBinaryExpressionAtom(_ ctx: MySqlParser.BinaryExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code fullColumnNameExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFullColumnNameExpressionAtom(_ ctx: MySqlParser.FullColumnNameExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code fullColumnNameExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFullColumnNameExpressionAtom(_ ctx: MySqlParser.FullColumnNameExpressionAtomContext)
	/**
	 * Enter a parse tree produced by the {@code bitExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBitExpressionAtom(_ ctx: MySqlParser.BitExpressionAtomContext)
	/**
	 * Exit a parse tree produced by the {@code bitExpressionAtom}
	 * labeled alternative in {@link MySqlParser#expressionAtom}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBitExpressionAtom(_ ctx: MySqlParser.BitExpressionAtomContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#unaryOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterUnaryOperator(_ ctx: MySqlParser.UnaryOperatorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#unaryOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitUnaryOperator(_ ctx: MySqlParser.UnaryOperatorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#comparisonOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterComparisonOperator(_ ctx: MySqlParser.ComparisonOperatorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#comparisonOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitComparisonOperator(_ ctx: MySqlParser.ComparisonOperatorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#logicalOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLogicalOperator(_ ctx: MySqlParser.LogicalOperatorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#logicalOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLogicalOperator(_ ctx: MySqlParser.LogicalOperatorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#bitOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBitOperator(_ ctx: MySqlParser.BitOperatorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#bitOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBitOperator(_ ctx: MySqlParser.BitOperatorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#multOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMultOperator(_ ctx: MySqlParser.MultOperatorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#multOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMultOperator(_ ctx: MySqlParser.MultOperatorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#addOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAddOperator(_ ctx: MySqlParser.AddOperatorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#addOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAddOperator(_ ctx: MySqlParser.AddOperatorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#jsonOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterJsonOperator(_ ctx: MySqlParser.JsonOperatorContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#jsonOperator}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitJsonOperator(_ ctx: MySqlParser.JsonOperatorContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#charsetNameBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCharsetNameBase(_ ctx: MySqlParser.CharsetNameBaseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#charsetNameBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCharsetNameBase(_ ctx: MySqlParser.CharsetNameBaseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#transactionLevelBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTransactionLevelBase(_ ctx: MySqlParser.TransactionLevelBaseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#transactionLevelBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTransactionLevelBase(_ ctx: MySqlParser.TransactionLevelBaseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#privilegesBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrivilegesBase(_ ctx: MySqlParser.PrivilegesBaseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#privilegesBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrivilegesBase(_ ctx: MySqlParser.PrivilegesBaseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#intervalTypeBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIntervalTypeBase(_ ctx: MySqlParser.IntervalTypeBaseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#intervalTypeBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIntervalTypeBase(_ ctx: MySqlParser.IntervalTypeBaseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#dataTypeBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDataTypeBase(_ ctx: MySqlParser.DataTypeBaseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#dataTypeBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDataTypeBase(_ ctx: MySqlParser.DataTypeBaseContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#keywordsCanBeId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterKeywordsCanBeId(_ ctx: MySqlParser.KeywordsCanBeIdContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#keywordsCanBeId}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitKeywordsCanBeId(_ ctx: MySqlParser.KeywordsCanBeIdContext)
	/**
	 * Enter a parse tree produced by {@link MySqlParser#functionNameBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFunctionNameBase(_ ctx: MySqlParser.FunctionNameBaseContext)
	/**
	 * Exit a parse tree produced by {@link MySqlParser#functionNameBase}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFunctionNameBase(_ ctx: MySqlParser.FunctionNameBaseContext)
}
