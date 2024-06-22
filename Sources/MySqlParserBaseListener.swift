/**
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

// Generated from MySqlParser.g4 by ANTLR 4.13.1

import Antlr4


/**
 * This class provides an empty implementation of {@link MySqlParserListener},
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
open class MySqlParserBaseListener: MySqlParserListener {
     public init() { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoot(_ ctx: MySqlParser.RootContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoot(_ ctx: MySqlParser.RootContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSqlStatements(_ ctx: MySqlParser.SqlStatementsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSqlStatements(_ ctx: MySqlParser.SqlStatementsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSqlStatement(_ ctx: MySqlParser.SqlStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSqlStatement(_ ctx: MySqlParser.SqlStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterEmptyStatement_(_ ctx: MySqlParser.EmptyStatement_Context) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitEmptyStatement_(_ ctx: MySqlParser.EmptyStatement_Context) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDdlStatement(_ ctx: MySqlParser.DdlStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDdlStatement(_ ctx: MySqlParser.DdlStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDmlStatement(_ ctx: MySqlParser.DmlStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDmlStatement(_ ctx: MySqlParser.DmlStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTransactionStatement(_ ctx: MySqlParser.TransactionStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTransactionStatement(_ ctx: MySqlParser.TransactionStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReplicationStatement(_ ctx: MySqlParser.ReplicationStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReplicationStatement(_ ctx: MySqlParser.ReplicationStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPreparedStatement(_ ctx: MySqlParser.PreparedStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPreparedStatement(_ ctx: MySqlParser.PreparedStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCompoundStatement(_ ctx: MySqlParser.CompoundStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCompoundStatement(_ ctx: MySqlParser.CompoundStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAdministrationStatement(_ ctx: MySqlParser.AdministrationStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAdministrationStatement(_ ctx: MySqlParser.AdministrationStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUtilityStatement(_ ctx: MySqlParser.UtilityStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUtilityStatement(_ ctx: MySqlParser.UtilityStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateDatabase(_ ctx: MySqlParser.CreateDatabaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateDatabase(_ ctx: MySqlParser.CreateDatabaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateEvent(_ ctx: MySqlParser.CreateEventContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateEvent(_ ctx: MySqlParser.CreateEventContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateIndex(_ ctx: MySqlParser.CreateIndexContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateIndex(_ ctx: MySqlParser.CreateIndexContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateLogfileGroup(_ ctx: MySqlParser.CreateLogfileGroupContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateLogfileGroup(_ ctx: MySqlParser.CreateLogfileGroupContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateProcedure(_ ctx: MySqlParser.CreateProcedureContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateProcedure(_ ctx: MySqlParser.CreateProcedureContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateFunction(_ ctx: MySqlParser.CreateFunctionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateFunction(_ ctx: MySqlParser.CreateFunctionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateRole(_ ctx: MySqlParser.CreateRoleContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateRole(_ ctx: MySqlParser.CreateRoleContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateServer(_ ctx: MySqlParser.CreateServerContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateServer(_ ctx: MySqlParser.CreateServerContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCopyCreateTable(_ ctx: MySqlParser.CopyCreateTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCopyCreateTable(_ ctx: MySqlParser.CopyCreateTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterQueryCreateTable(_ ctx: MySqlParser.QueryCreateTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitQueryCreateTable(_ ctx: MySqlParser.QueryCreateTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterColumnCreateTable(_ ctx: MySqlParser.ColumnCreateTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitColumnCreateTable(_ ctx: MySqlParser.ColumnCreateTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateTablespaceInnodb(_ ctx: MySqlParser.CreateTablespaceInnodbContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateTablespaceInnodb(_ ctx: MySqlParser.CreateTablespaceInnodbContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateTablespaceNdb(_ ctx: MySqlParser.CreateTablespaceNdbContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateTablespaceNdb(_ ctx: MySqlParser.CreateTablespaceNdbContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateTrigger(_ ctx: MySqlParser.CreateTriggerContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateTrigger(_ ctx: MySqlParser.CreateTriggerContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWithClause(_ ctx: MySqlParser.WithClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWithClause(_ ctx: MySqlParser.WithClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCommonTableExpressions(_ ctx: MySqlParser.CommonTableExpressionsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCommonTableExpressions(_ ctx: MySqlParser.CommonTableExpressionsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCteName(_ ctx: MySqlParser.CteNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCteName(_ ctx: MySqlParser.CteNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCteColumnName(_ ctx: MySqlParser.CteColumnNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCteColumnName(_ ctx: MySqlParser.CteColumnNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateView(_ ctx: MySqlParser.CreateViewContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateView(_ ctx: MySqlParser.CreateViewContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateDatabaseOption(_ ctx: MySqlParser.CreateDatabaseOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateDatabaseOption(_ ctx: MySqlParser.CreateDatabaseOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCharSet(_ ctx: MySqlParser.CharSetContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCharSet(_ ctx: MySqlParser.CharSetContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCurrentUserExpression(_ ctx: MySqlParser.CurrentUserExpressionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCurrentUserExpression(_ ctx: MySqlParser.CurrentUserExpressionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterOwnerStatement(_ ctx: MySqlParser.OwnerStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitOwnerStatement(_ ctx: MySqlParser.OwnerStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPreciseSchedule(_ ctx: MySqlParser.PreciseScheduleContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPreciseSchedule(_ ctx: MySqlParser.PreciseScheduleContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIntervalSchedule(_ ctx: MySqlParser.IntervalScheduleContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIntervalSchedule(_ ctx: MySqlParser.IntervalScheduleContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTimestampValue(_ ctx: MySqlParser.TimestampValueContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTimestampValue(_ ctx: MySqlParser.TimestampValueContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIntervalExpr(_ ctx: MySqlParser.IntervalExprContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIntervalExpr(_ ctx: MySqlParser.IntervalExprContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIntervalType(_ ctx: MySqlParser.IntervalTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIntervalType(_ ctx: MySqlParser.IntervalTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterEnableType(_ ctx: MySqlParser.EnableTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitEnableType(_ ctx: MySqlParser.EnableTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIndexType(_ ctx: MySqlParser.IndexTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIndexType(_ ctx: MySqlParser.IndexTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIndexOption(_ ctx: MySqlParser.IndexOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIndexOption(_ ctx: MySqlParser.IndexOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterProcedureParameter(_ ctx: MySqlParser.ProcedureParameterContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitProcedureParameter(_ ctx: MySqlParser.ProcedureParameterContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFunctionParameter(_ ctx: MySqlParser.FunctionParameterContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFunctionParameter(_ ctx: MySqlParser.FunctionParameterContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoutineComment(_ ctx: MySqlParser.RoutineCommentContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoutineComment(_ ctx: MySqlParser.RoutineCommentContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoutineLanguage(_ ctx: MySqlParser.RoutineLanguageContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoutineLanguage(_ ctx: MySqlParser.RoutineLanguageContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoutineBehavior(_ ctx: MySqlParser.RoutineBehaviorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoutineBehavior(_ ctx: MySqlParser.RoutineBehaviorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoutineData(_ ctx: MySqlParser.RoutineDataContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoutineData(_ ctx: MySqlParser.RoutineDataContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoutineSecurity(_ ctx: MySqlParser.RoutineSecurityContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoutineSecurity(_ ctx: MySqlParser.RoutineSecurityContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterServerOption(_ ctx: MySqlParser.ServerOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitServerOption(_ ctx: MySqlParser.ServerOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateDefinitions(_ ctx: MySqlParser.CreateDefinitionsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateDefinitions(_ ctx: MySqlParser.CreateDefinitionsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterColumnDeclaration(_ ctx: MySqlParser.ColumnDeclarationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitColumnDeclaration(_ ctx: MySqlParser.ColumnDeclarationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterConstraintDeclaration(_ ctx: MySqlParser.ConstraintDeclarationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitConstraintDeclaration(_ ctx: MySqlParser.ConstraintDeclarationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIndexDeclaration(_ ctx: MySqlParser.IndexDeclarationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIndexDeclaration(_ ctx: MySqlParser.IndexDeclarationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterColumnDefinition(_ ctx: MySqlParser.ColumnDefinitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitColumnDefinition(_ ctx: MySqlParser.ColumnDefinitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNullColumnConstraint(_ ctx: MySqlParser.NullColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNullColumnConstraint(_ ctx: MySqlParser.NullColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDefaultColumnConstraint(_ ctx: MySqlParser.DefaultColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDefaultColumnConstraint(_ ctx: MySqlParser.DefaultColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterVisibilityColumnConstraint(_ ctx: MySqlParser.VisibilityColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitVisibilityColumnConstraint(_ ctx: MySqlParser.VisibilityColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterInvisibilityColumnConstraint(_ ctx: MySqlParser.InvisibilityColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitInvisibilityColumnConstraint(_ ctx: MySqlParser.InvisibilityColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAutoIncrementColumnConstraint(_ ctx: MySqlParser.AutoIncrementColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAutoIncrementColumnConstraint(_ ctx: MySqlParser.AutoIncrementColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPrimaryKeyColumnConstraint(_ ctx: MySqlParser.PrimaryKeyColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPrimaryKeyColumnConstraint(_ ctx: MySqlParser.PrimaryKeyColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUniqueKeyColumnConstraint(_ ctx: MySqlParser.UniqueKeyColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUniqueKeyColumnConstraint(_ ctx: MySqlParser.UniqueKeyColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCommentColumnConstraint(_ ctx: MySqlParser.CommentColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCommentColumnConstraint(_ ctx: MySqlParser.CommentColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFormatColumnConstraint(_ ctx: MySqlParser.FormatColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFormatColumnConstraint(_ ctx: MySqlParser.FormatColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStorageColumnConstraint(_ ctx: MySqlParser.StorageColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStorageColumnConstraint(_ ctx: MySqlParser.StorageColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReferenceColumnConstraint(_ ctx: MySqlParser.ReferenceColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReferenceColumnConstraint(_ ctx: MySqlParser.ReferenceColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCollateColumnConstraint(_ ctx: MySqlParser.CollateColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCollateColumnConstraint(_ ctx: MySqlParser.CollateColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterGeneratedColumnConstraint(_ ctx: MySqlParser.GeneratedColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitGeneratedColumnConstraint(_ ctx: MySqlParser.GeneratedColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSerialDefaultColumnConstraint(_ ctx: MySqlParser.SerialDefaultColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSerialDefaultColumnConstraint(_ ctx: MySqlParser.SerialDefaultColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCheckColumnConstraint(_ ctx: MySqlParser.CheckColumnConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCheckColumnConstraint(_ ctx: MySqlParser.CheckColumnConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPrimaryKeyTableConstraint(_ ctx: MySqlParser.PrimaryKeyTableConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPrimaryKeyTableConstraint(_ ctx: MySqlParser.PrimaryKeyTableConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUniqueKeyTableConstraint(_ ctx: MySqlParser.UniqueKeyTableConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUniqueKeyTableConstraint(_ ctx: MySqlParser.UniqueKeyTableConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterForeignKeyTableConstraint(_ ctx: MySqlParser.ForeignKeyTableConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitForeignKeyTableConstraint(_ ctx: MySqlParser.ForeignKeyTableConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCheckTableConstraint(_ ctx: MySqlParser.CheckTableConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCheckTableConstraint(_ ctx: MySqlParser.CheckTableConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReferenceDefinition(_ ctx: MySqlParser.ReferenceDefinitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReferenceDefinition(_ ctx: MySqlParser.ReferenceDefinitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReferenceAction(_ ctx: MySqlParser.ReferenceActionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReferenceAction(_ ctx: MySqlParser.ReferenceActionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReferenceControlType(_ ctx: MySqlParser.ReferenceControlTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReferenceControlType(_ ctx: MySqlParser.ReferenceControlTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleIndexDeclaration(_ ctx: MySqlParser.SimpleIndexDeclarationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleIndexDeclaration(_ ctx: MySqlParser.SimpleIndexDeclarationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSpecialIndexDeclaration(_ ctx: MySqlParser.SpecialIndexDeclarationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSpecialIndexDeclaration(_ ctx: MySqlParser.SpecialIndexDeclarationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionEngine(_ ctx: MySqlParser.TableOptionEngineContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionEngine(_ ctx: MySqlParser.TableOptionEngineContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionEngineAttribute(_ ctx: MySqlParser.TableOptionEngineAttributeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionEngineAttribute(_ ctx: MySqlParser.TableOptionEngineAttributeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionAutoextendSize(_ ctx: MySqlParser.TableOptionAutoextendSizeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionAutoextendSize(_ ctx: MySqlParser.TableOptionAutoextendSizeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionAutoIncrement(_ ctx: MySqlParser.TableOptionAutoIncrementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionAutoIncrement(_ ctx: MySqlParser.TableOptionAutoIncrementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionAverage(_ ctx: MySqlParser.TableOptionAverageContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionAverage(_ ctx: MySqlParser.TableOptionAverageContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionCharset(_ ctx: MySqlParser.TableOptionCharsetContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionCharset(_ ctx: MySqlParser.TableOptionCharsetContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionChecksum(_ ctx: MySqlParser.TableOptionChecksumContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionChecksum(_ ctx: MySqlParser.TableOptionChecksumContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionCollate(_ ctx: MySqlParser.TableOptionCollateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionCollate(_ ctx: MySqlParser.TableOptionCollateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionComment(_ ctx: MySqlParser.TableOptionCommentContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionComment(_ ctx: MySqlParser.TableOptionCommentContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionCompression(_ ctx: MySqlParser.TableOptionCompressionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionCompression(_ ctx: MySqlParser.TableOptionCompressionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionConnection(_ ctx: MySqlParser.TableOptionConnectionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionConnection(_ ctx: MySqlParser.TableOptionConnectionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionDataDirectory(_ ctx: MySqlParser.TableOptionDataDirectoryContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionDataDirectory(_ ctx: MySqlParser.TableOptionDataDirectoryContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionDelay(_ ctx: MySqlParser.TableOptionDelayContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionDelay(_ ctx: MySqlParser.TableOptionDelayContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionEncryption(_ ctx: MySqlParser.TableOptionEncryptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionEncryption(_ ctx: MySqlParser.TableOptionEncryptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionPageCompressed(_ ctx: MySqlParser.TableOptionPageCompressedContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionPageCompressed(_ ctx: MySqlParser.TableOptionPageCompressedContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionPageCompressionLevel(_ ctx: MySqlParser.TableOptionPageCompressionLevelContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionPageCompressionLevel(_ ctx: MySqlParser.TableOptionPageCompressionLevelContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionEncryptionKeyId(_ ctx: MySqlParser.TableOptionEncryptionKeyIdContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionEncryptionKeyId(_ ctx: MySqlParser.TableOptionEncryptionKeyIdContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionIndexDirectory(_ ctx: MySqlParser.TableOptionIndexDirectoryContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionIndexDirectory(_ ctx: MySqlParser.TableOptionIndexDirectoryContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionInsertMethod(_ ctx: MySqlParser.TableOptionInsertMethodContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionInsertMethod(_ ctx: MySqlParser.TableOptionInsertMethodContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionKeyBlockSize(_ ctx: MySqlParser.TableOptionKeyBlockSizeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionKeyBlockSize(_ ctx: MySqlParser.TableOptionKeyBlockSizeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionMaxRows(_ ctx: MySqlParser.TableOptionMaxRowsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionMaxRows(_ ctx: MySqlParser.TableOptionMaxRowsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionMinRows(_ ctx: MySqlParser.TableOptionMinRowsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionMinRows(_ ctx: MySqlParser.TableOptionMinRowsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionPackKeys(_ ctx: MySqlParser.TableOptionPackKeysContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionPackKeys(_ ctx: MySqlParser.TableOptionPackKeysContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionPassword(_ ctx: MySqlParser.TableOptionPasswordContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionPassword(_ ctx: MySqlParser.TableOptionPasswordContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionRowFormat(_ ctx: MySqlParser.TableOptionRowFormatContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionRowFormat(_ ctx: MySqlParser.TableOptionRowFormatContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionStartTransaction(_ ctx: MySqlParser.TableOptionStartTransactionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionStartTransaction(_ ctx: MySqlParser.TableOptionStartTransactionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionSecondaryEngineAttribute(_ ctx: MySqlParser.TableOptionSecondaryEngineAttributeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionSecondaryEngineAttribute(_ ctx: MySqlParser.TableOptionSecondaryEngineAttributeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionRecalculation(_ ctx: MySqlParser.TableOptionRecalculationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionRecalculation(_ ctx: MySqlParser.TableOptionRecalculationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionPersistent(_ ctx: MySqlParser.TableOptionPersistentContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionPersistent(_ ctx: MySqlParser.TableOptionPersistentContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionSamplePage(_ ctx: MySqlParser.TableOptionSamplePageContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionSamplePage(_ ctx: MySqlParser.TableOptionSamplePageContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionTablespace(_ ctx: MySqlParser.TableOptionTablespaceContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionTablespace(_ ctx: MySqlParser.TableOptionTablespaceContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionTableType(_ ctx: MySqlParser.TableOptionTableTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionTableType(_ ctx: MySqlParser.TableOptionTableTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionTransactional(_ ctx: MySqlParser.TableOptionTransactionalContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionTransactional(_ ctx: MySqlParser.TableOptionTransactionalContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableOptionUnion(_ ctx: MySqlParser.TableOptionUnionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableOptionUnion(_ ctx: MySqlParser.TableOptionUnionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableType(_ ctx: MySqlParser.TableTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableType(_ ctx: MySqlParser.TableTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTablespaceStorage(_ ctx: MySqlParser.TablespaceStorageContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTablespaceStorage(_ ctx: MySqlParser.TablespaceStorageContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionDefinitions(_ ctx: MySqlParser.PartitionDefinitionsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionDefinitions(_ ctx: MySqlParser.PartitionDefinitionsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionFunctionHash(_ ctx: MySqlParser.PartitionFunctionHashContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionFunctionHash(_ ctx: MySqlParser.PartitionFunctionHashContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionFunctionKey(_ ctx: MySqlParser.PartitionFunctionKeyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionFunctionKey(_ ctx: MySqlParser.PartitionFunctionKeyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionFunctionRange(_ ctx: MySqlParser.PartitionFunctionRangeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionFunctionRange(_ ctx: MySqlParser.PartitionFunctionRangeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionFunctionList(_ ctx: MySqlParser.PartitionFunctionListContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionFunctionList(_ ctx: MySqlParser.PartitionFunctionListContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSubPartitionFunctionHash(_ ctx: MySqlParser.SubPartitionFunctionHashContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSubPartitionFunctionHash(_ ctx: MySqlParser.SubPartitionFunctionHashContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSubPartitionFunctionKey(_ ctx: MySqlParser.SubPartitionFunctionKeyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSubPartitionFunctionKey(_ ctx: MySqlParser.SubPartitionFunctionKeyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionComparison(_ ctx: MySqlParser.PartitionComparisonContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionComparison(_ ctx: MySqlParser.PartitionComparisonContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionListAtom(_ ctx: MySqlParser.PartitionListAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionListAtom(_ ctx: MySqlParser.PartitionListAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionListVector(_ ctx: MySqlParser.PartitionListVectorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionListVector(_ ctx: MySqlParser.PartitionListVectorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionSimple(_ ctx: MySqlParser.PartitionSimpleContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionSimple(_ ctx: MySqlParser.PartitionSimpleContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionDefinerAtom(_ ctx: MySqlParser.PartitionDefinerAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionDefinerAtom(_ ctx: MySqlParser.PartitionDefinerAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionDefinerVector(_ ctx: MySqlParser.PartitionDefinerVectorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionDefinerVector(_ ctx: MySqlParser.PartitionDefinerVectorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSubpartitionDefinition(_ ctx: MySqlParser.SubpartitionDefinitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSubpartitionDefinition(_ ctx: MySqlParser.SubpartitionDefinitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionOptionEngine(_ ctx: MySqlParser.PartitionOptionEngineContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionOptionEngine(_ ctx: MySqlParser.PartitionOptionEngineContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionOptionComment(_ ctx: MySqlParser.PartitionOptionCommentContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionOptionComment(_ ctx: MySqlParser.PartitionOptionCommentContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionOptionDataDirectory(_ ctx: MySqlParser.PartitionOptionDataDirectoryContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionOptionDataDirectory(_ ctx: MySqlParser.PartitionOptionDataDirectoryContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionOptionIndexDirectory(_ ctx: MySqlParser.PartitionOptionIndexDirectoryContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionOptionIndexDirectory(_ ctx: MySqlParser.PartitionOptionIndexDirectoryContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionOptionMaxRows(_ ctx: MySqlParser.PartitionOptionMaxRowsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionOptionMaxRows(_ ctx: MySqlParser.PartitionOptionMaxRowsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionOptionMinRows(_ ctx: MySqlParser.PartitionOptionMinRowsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionOptionMinRows(_ ctx: MySqlParser.PartitionOptionMinRowsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionOptionTablespace(_ ctx: MySqlParser.PartitionOptionTablespaceContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionOptionTablespace(_ ctx: MySqlParser.PartitionOptionTablespaceContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionOptionNodeGroup(_ ctx: MySqlParser.PartitionOptionNodeGroupContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionOptionNodeGroup(_ ctx: MySqlParser.PartitionOptionNodeGroupContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterSimpleDatabase(_ ctx: MySqlParser.AlterSimpleDatabaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterSimpleDatabase(_ ctx: MySqlParser.AlterSimpleDatabaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterUpgradeName(_ ctx: MySqlParser.AlterUpgradeNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterUpgradeName(_ ctx: MySqlParser.AlterUpgradeNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterEvent(_ ctx: MySqlParser.AlterEventContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterEvent(_ ctx: MySqlParser.AlterEventContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterFunction(_ ctx: MySqlParser.AlterFunctionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterFunction(_ ctx: MySqlParser.AlterFunctionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterInstance(_ ctx: MySqlParser.AlterInstanceContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterInstance(_ ctx: MySqlParser.AlterInstanceContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterLogfileGroup(_ ctx: MySqlParser.AlterLogfileGroupContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterLogfileGroup(_ ctx: MySqlParser.AlterLogfileGroupContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterProcedure(_ ctx: MySqlParser.AlterProcedureContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterProcedure(_ ctx: MySqlParser.AlterProcedureContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterServer(_ ctx: MySqlParser.AlterServerContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterServer(_ ctx: MySqlParser.AlterServerContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterTable(_ ctx: MySqlParser.AlterTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterTable(_ ctx: MySqlParser.AlterTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterTablespace(_ ctx: MySqlParser.AlterTablespaceContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterTablespace(_ ctx: MySqlParser.AlterTablespaceContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterView(_ ctx: MySqlParser.AlterViewContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterView(_ ctx: MySqlParser.AlterViewContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByTableOption(_ ctx: MySqlParser.AlterByTableOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByTableOption(_ ctx: MySqlParser.AlterByTableOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddColumn(_ ctx: MySqlParser.AlterByAddColumnContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddColumn(_ ctx: MySqlParser.AlterByAddColumnContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddColumns(_ ctx: MySqlParser.AlterByAddColumnsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddColumns(_ ctx: MySqlParser.AlterByAddColumnsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddIndex(_ ctx: MySqlParser.AlterByAddIndexContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddIndex(_ ctx: MySqlParser.AlterByAddIndexContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddPrimaryKey(_ ctx: MySqlParser.AlterByAddPrimaryKeyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddPrimaryKey(_ ctx: MySqlParser.AlterByAddPrimaryKeyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddUniqueKey(_ ctx: MySqlParser.AlterByAddUniqueKeyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddUniqueKey(_ ctx: MySqlParser.AlterByAddUniqueKeyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddSpecialIndex(_ ctx: MySqlParser.AlterByAddSpecialIndexContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddSpecialIndex(_ ctx: MySqlParser.AlterByAddSpecialIndexContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddForeignKey(_ ctx: MySqlParser.AlterByAddForeignKeyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddForeignKey(_ ctx: MySqlParser.AlterByAddForeignKeyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddCheckTableConstraint(_ ctx: MySqlParser.AlterByAddCheckTableConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddCheckTableConstraint(_ ctx: MySqlParser.AlterByAddCheckTableConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAlterCheckTableConstraint(_ ctx: MySqlParser.AlterByAlterCheckTableConstraintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAlterCheckTableConstraint(_ ctx: MySqlParser.AlterByAlterCheckTableConstraintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterBySetAlgorithm(_ ctx: MySqlParser.AlterBySetAlgorithmContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterBySetAlgorithm(_ ctx: MySqlParser.AlterBySetAlgorithmContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByChangeDefault(_ ctx: MySqlParser.AlterByChangeDefaultContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByChangeDefault(_ ctx: MySqlParser.AlterByChangeDefaultContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByChangeColumn(_ ctx: MySqlParser.AlterByChangeColumnContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByChangeColumn(_ ctx: MySqlParser.AlterByChangeColumnContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByRenameColumn(_ ctx: MySqlParser.AlterByRenameColumnContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByRenameColumn(_ ctx: MySqlParser.AlterByRenameColumnContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByLock(_ ctx: MySqlParser.AlterByLockContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByLock(_ ctx: MySqlParser.AlterByLockContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByModifyColumn(_ ctx: MySqlParser.AlterByModifyColumnContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByModifyColumn(_ ctx: MySqlParser.AlterByModifyColumnContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDropColumn(_ ctx: MySqlParser.AlterByDropColumnContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDropColumn(_ ctx: MySqlParser.AlterByDropColumnContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDropConstraintCheck(_ ctx: MySqlParser.AlterByDropConstraintCheckContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDropConstraintCheck(_ ctx: MySqlParser.AlterByDropConstraintCheckContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDropPrimaryKey(_ ctx: MySqlParser.AlterByDropPrimaryKeyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDropPrimaryKey(_ ctx: MySqlParser.AlterByDropPrimaryKeyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDropIndex(_ ctx: MySqlParser.AlterByDropIndexContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDropIndex(_ ctx: MySqlParser.AlterByDropIndexContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByRenameIndex(_ ctx: MySqlParser.AlterByRenameIndexContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByRenameIndex(_ ctx: MySqlParser.AlterByRenameIndexContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAlterColumnDefault(_ ctx: MySqlParser.AlterByAlterColumnDefaultContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAlterColumnDefault(_ ctx: MySqlParser.AlterByAlterColumnDefaultContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAlterIndexVisibility(_ ctx: MySqlParser.AlterByAlterIndexVisibilityContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAlterIndexVisibility(_ ctx: MySqlParser.AlterByAlterIndexVisibilityContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDropForeignKey(_ ctx: MySqlParser.AlterByDropForeignKeyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDropForeignKey(_ ctx: MySqlParser.AlterByDropForeignKeyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDisableKeys(_ ctx: MySqlParser.AlterByDisableKeysContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDisableKeys(_ ctx: MySqlParser.AlterByDisableKeysContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByEnableKeys(_ ctx: MySqlParser.AlterByEnableKeysContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByEnableKeys(_ ctx: MySqlParser.AlterByEnableKeysContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByRename(_ ctx: MySqlParser.AlterByRenameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByRename(_ ctx: MySqlParser.AlterByRenameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByOrder(_ ctx: MySqlParser.AlterByOrderContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByOrder(_ ctx: MySqlParser.AlterByOrderContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByConvertCharset(_ ctx: MySqlParser.AlterByConvertCharsetContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByConvertCharset(_ ctx: MySqlParser.AlterByConvertCharsetContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDefaultCharset(_ ctx: MySqlParser.AlterByDefaultCharsetContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDefaultCharset(_ ctx: MySqlParser.AlterByDefaultCharsetContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDiscardTablespace(_ ctx: MySqlParser.AlterByDiscardTablespaceContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDiscardTablespace(_ ctx: MySqlParser.AlterByDiscardTablespaceContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByImportTablespace(_ ctx: MySqlParser.AlterByImportTablespaceContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByImportTablespace(_ ctx: MySqlParser.AlterByImportTablespaceContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByForce(_ ctx: MySqlParser.AlterByForceContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByForce(_ ctx: MySqlParser.AlterByForceContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByValidate(_ ctx: MySqlParser.AlterByValidateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByValidate(_ ctx: MySqlParser.AlterByValidateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddDefinitions(_ ctx: MySqlParser.AlterByAddDefinitionsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddDefinitions(_ ctx: MySqlParser.AlterByAddDefinitionsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterPartition(_ ctx: MySqlParser.AlterPartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterPartition(_ ctx: MySqlParser.AlterPartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAddPartition(_ ctx: MySqlParser.AlterByAddPartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAddPartition(_ ctx: MySqlParser.AlterByAddPartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDropPartition(_ ctx: MySqlParser.AlterByDropPartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDropPartition(_ ctx: MySqlParser.AlterByDropPartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByDiscardPartition(_ ctx: MySqlParser.AlterByDiscardPartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByDiscardPartition(_ ctx: MySqlParser.AlterByDiscardPartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByImportPartition(_ ctx: MySqlParser.AlterByImportPartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByImportPartition(_ ctx: MySqlParser.AlterByImportPartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByTruncatePartition(_ ctx: MySqlParser.AlterByTruncatePartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByTruncatePartition(_ ctx: MySqlParser.AlterByTruncatePartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByCoalescePartition(_ ctx: MySqlParser.AlterByCoalescePartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByCoalescePartition(_ ctx: MySqlParser.AlterByCoalescePartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByReorganizePartition(_ ctx: MySqlParser.AlterByReorganizePartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByReorganizePartition(_ ctx: MySqlParser.AlterByReorganizePartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByExchangePartition(_ ctx: MySqlParser.AlterByExchangePartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByExchangePartition(_ ctx: MySqlParser.AlterByExchangePartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByAnalyzePartition(_ ctx: MySqlParser.AlterByAnalyzePartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByAnalyzePartition(_ ctx: MySqlParser.AlterByAnalyzePartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByCheckPartition(_ ctx: MySqlParser.AlterByCheckPartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByCheckPartition(_ ctx: MySqlParser.AlterByCheckPartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByOptimizePartition(_ ctx: MySqlParser.AlterByOptimizePartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByOptimizePartition(_ ctx: MySqlParser.AlterByOptimizePartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByRebuildPartition(_ ctx: MySqlParser.AlterByRebuildPartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByRebuildPartition(_ ctx: MySqlParser.AlterByRebuildPartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByRepairPartition(_ ctx: MySqlParser.AlterByRepairPartitionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByRepairPartition(_ ctx: MySqlParser.AlterByRepairPartitionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByRemovePartitioning(_ ctx: MySqlParser.AlterByRemovePartitioningContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByRemovePartitioning(_ ctx: MySqlParser.AlterByRemovePartitioningContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterByUpgradePartitioning(_ ctx: MySqlParser.AlterByUpgradePartitioningContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterByUpgradePartitioning(_ ctx: MySqlParser.AlterByUpgradePartitioningContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropDatabase(_ ctx: MySqlParser.DropDatabaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropDatabase(_ ctx: MySqlParser.DropDatabaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropEvent(_ ctx: MySqlParser.DropEventContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropEvent(_ ctx: MySqlParser.DropEventContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropIndex(_ ctx: MySqlParser.DropIndexContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropIndex(_ ctx: MySqlParser.DropIndexContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropLogfileGroup(_ ctx: MySqlParser.DropLogfileGroupContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropLogfileGroup(_ ctx: MySqlParser.DropLogfileGroupContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropProcedure(_ ctx: MySqlParser.DropProcedureContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropProcedure(_ ctx: MySqlParser.DropProcedureContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropFunction(_ ctx: MySqlParser.DropFunctionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropFunction(_ ctx: MySqlParser.DropFunctionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropServer(_ ctx: MySqlParser.DropServerContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropServer(_ ctx: MySqlParser.DropServerContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropTable(_ ctx: MySqlParser.DropTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropTable(_ ctx: MySqlParser.DropTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropTablespace(_ ctx: MySqlParser.DropTablespaceContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropTablespace(_ ctx: MySqlParser.DropTablespaceContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropTrigger(_ ctx: MySqlParser.DropTriggerContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropTrigger(_ ctx: MySqlParser.DropTriggerContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropView(_ ctx: MySqlParser.DropViewContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropView(_ ctx: MySqlParser.DropViewContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropRole(_ ctx: MySqlParser.DropRoleContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropRole(_ ctx: MySqlParser.DropRoleContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetRole(_ ctx: MySqlParser.SetRoleContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetRole(_ ctx: MySqlParser.SetRoleContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRenameTable(_ ctx: MySqlParser.RenameTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRenameTable(_ ctx: MySqlParser.RenameTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRenameTableClause(_ ctx: MySqlParser.RenameTableClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRenameTableClause(_ ctx: MySqlParser.RenameTableClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTruncateTable(_ ctx: MySqlParser.TruncateTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTruncateTable(_ ctx: MySqlParser.TruncateTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCallStatement(_ ctx: MySqlParser.CallStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCallStatement(_ ctx: MySqlParser.CallStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDeleteStatement(_ ctx: MySqlParser.DeleteStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDeleteStatement(_ ctx: MySqlParser.DeleteStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDoStatement(_ ctx: MySqlParser.DoStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDoStatement(_ ctx: MySqlParser.DoStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerStatement(_ ctx: MySqlParser.HandlerStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerStatement(_ ctx: MySqlParser.HandlerStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterInsertStatement(_ ctx: MySqlParser.InsertStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitInsertStatement(_ ctx: MySqlParser.InsertStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLoadDataStatement(_ ctx: MySqlParser.LoadDataStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLoadDataStatement(_ ctx: MySqlParser.LoadDataStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLoadXmlStatement(_ ctx: MySqlParser.LoadXmlStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLoadXmlStatement(_ ctx: MySqlParser.LoadXmlStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReplaceStatement(_ ctx: MySqlParser.ReplaceStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReplaceStatement(_ ctx: MySqlParser.ReplaceStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleSelect(_ ctx: MySqlParser.SimpleSelectContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleSelect(_ ctx: MySqlParser.SimpleSelectContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterParenthesisSelect(_ ctx: MySqlParser.ParenthesisSelectContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitParenthesisSelect(_ ctx: MySqlParser.ParenthesisSelectContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUnionSelect(_ ctx: MySqlParser.UnionSelectContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUnionSelect(_ ctx: MySqlParser.UnionSelectContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUnionParenthesisSelect(_ ctx: MySqlParser.UnionParenthesisSelectContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUnionParenthesisSelect(_ ctx: MySqlParser.UnionParenthesisSelectContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWithLateralStatement(_ ctx: MySqlParser.WithLateralStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWithLateralStatement(_ ctx: MySqlParser.WithLateralStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUpdateStatement(_ ctx: MySqlParser.UpdateStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUpdateStatement(_ ctx: MySqlParser.UpdateStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterValuesStatement(_ ctx: MySqlParser.ValuesStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitValuesStatement(_ ctx: MySqlParser.ValuesStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterInsertStatementValue(_ ctx: MySqlParser.InsertStatementValueContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitInsertStatementValue(_ ctx: MySqlParser.InsertStatementValueContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUpdatedElement(_ ctx: MySqlParser.UpdatedElementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUpdatedElement(_ ctx: MySqlParser.UpdatedElementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAssignmentField(_ ctx: MySqlParser.AssignmentFieldContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAssignmentField(_ ctx: MySqlParser.AssignmentFieldContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLockClause(_ ctx: MySqlParser.LockClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLockClause(_ ctx: MySqlParser.LockClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSingleDeleteStatement(_ ctx: MySqlParser.SingleDeleteStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSingleDeleteStatement(_ ctx: MySqlParser.SingleDeleteStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMultipleDeleteStatement(_ ctx: MySqlParser.MultipleDeleteStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMultipleDeleteStatement(_ ctx: MySqlParser.MultipleDeleteStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerOpenStatement(_ ctx: MySqlParser.HandlerOpenStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerOpenStatement(_ ctx: MySqlParser.HandlerOpenStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerReadIndexStatement(_ ctx: MySqlParser.HandlerReadIndexStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerReadIndexStatement(_ ctx: MySqlParser.HandlerReadIndexStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerReadStatement(_ ctx: MySqlParser.HandlerReadStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerReadStatement(_ ctx: MySqlParser.HandlerReadStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerCloseStatement(_ ctx: MySqlParser.HandlerCloseStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerCloseStatement(_ ctx: MySqlParser.HandlerCloseStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSingleUpdateStatement(_ ctx: MySqlParser.SingleUpdateStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSingleUpdateStatement(_ ctx: MySqlParser.SingleUpdateStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMultipleUpdateStatement(_ ctx: MySqlParser.MultipleUpdateStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMultipleUpdateStatement(_ ctx: MySqlParser.MultipleUpdateStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterOrderByClause(_ ctx: MySqlParser.OrderByClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitOrderByClause(_ ctx: MySqlParser.OrderByClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterOrderByExpression(_ ctx: MySqlParser.OrderByExpressionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitOrderByExpression(_ ctx: MySqlParser.OrderByExpressionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableSources(_ ctx: MySqlParser.TableSourcesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableSources(_ ctx: MySqlParser.TableSourcesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableSourceBase(_ ctx: MySqlParser.TableSourceBaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableSourceBase(_ ctx: MySqlParser.TableSourceBaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableSourceNested(_ ctx: MySqlParser.TableSourceNestedContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableSourceNested(_ ctx: MySqlParser.TableSourceNestedContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableJson(_ ctx: MySqlParser.TableJsonContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableJson(_ ctx: MySqlParser.TableJsonContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAtomTableItem(_ ctx: MySqlParser.AtomTableItemContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAtomTableItem(_ ctx: MySqlParser.AtomTableItemContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSubqueryTableItem(_ ctx: MySqlParser.SubqueryTableItemContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSubqueryTableItem(_ ctx: MySqlParser.SubqueryTableItemContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableSourcesItem(_ ctx: MySqlParser.TableSourcesItemContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableSourcesItem(_ ctx: MySqlParser.TableSourcesItemContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIndexHint(_ ctx: MySqlParser.IndexHintContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIndexHint(_ ctx: MySqlParser.IndexHintContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIndexHintType(_ ctx: MySqlParser.IndexHintTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIndexHintType(_ ctx: MySqlParser.IndexHintTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterInnerJoin(_ ctx: MySqlParser.InnerJoinContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitInnerJoin(_ ctx: MySqlParser.InnerJoinContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStraightJoin(_ ctx: MySqlParser.StraightJoinContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStraightJoin(_ ctx: MySqlParser.StraightJoinContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterOuterJoin(_ ctx: MySqlParser.OuterJoinContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitOuterJoin(_ ctx: MySqlParser.OuterJoinContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNaturalJoin(_ ctx: MySqlParser.NaturalJoinContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNaturalJoin(_ ctx: MySqlParser.NaturalJoinContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJoinSpec(_ ctx: MySqlParser.JoinSpecContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJoinSpec(_ ctx: MySqlParser.JoinSpecContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterQueryExpression(_ ctx: MySqlParser.QueryExpressionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitQueryExpression(_ ctx: MySqlParser.QueryExpressionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterQueryExpressionNointo(_ ctx: MySqlParser.QueryExpressionNointoContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitQueryExpressionNointo(_ ctx: MySqlParser.QueryExpressionNointoContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterQuerySpecification(_ ctx: MySqlParser.QuerySpecificationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitQuerySpecification(_ ctx: MySqlParser.QuerySpecificationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterQuerySpecificationNointo(_ ctx: MySqlParser.QuerySpecificationNointoContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitQuerySpecificationNointo(_ ctx: MySqlParser.QuerySpecificationNointoContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUnionParenthesis(_ ctx: MySqlParser.UnionParenthesisContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUnionParenthesis(_ ctx: MySqlParser.UnionParenthesisContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUnionStatement(_ ctx: MySqlParser.UnionStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUnionStatement(_ ctx: MySqlParser.UnionStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLateralStatement(_ ctx: MySqlParser.LateralStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLateralStatement(_ ctx: MySqlParser.LateralStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJsonTable(_ ctx: MySqlParser.JsonTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJsonTable(_ ctx: MySqlParser.JsonTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJsonColumnList(_ ctx: MySqlParser.JsonColumnListContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJsonColumnList(_ ctx: MySqlParser.JsonColumnListContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJsonColumn(_ ctx: MySqlParser.JsonColumnContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJsonColumn(_ ctx: MySqlParser.JsonColumnContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJsonOnEmpty(_ ctx: MySqlParser.JsonOnEmptyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJsonOnEmpty(_ ctx: MySqlParser.JsonOnEmptyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJsonOnError(_ ctx: MySqlParser.JsonOnErrorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJsonOnError(_ ctx: MySqlParser.JsonOnErrorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectSpec(_ ctx: MySqlParser.SelectSpecContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectSpec(_ ctx: MySqlParser.SelectSpecContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectElements(_ ctx: MySqlParser.SelectElementsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectElements(_ ctx: MySqlParser.SelectElementsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectStarElement(_ ctx: MySqlParser.SelectStarElementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectStarElement(_ ctx: MySqlParser.SelectStarElementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectColumnElement(_ ctx: MySqlParser.SelectColumnElementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectColumnElement(_ ctx: MySqlParser.SelectColumnElementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectFunctionElement(_ ctx: MySqlParser.SelectFunctionElementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectFunctionElement(_ ctx: MySqlParser.SelectFunctionElementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectExpressionElement(_ ctx: MySqlParser.SelectExpressionElementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectExpressionElement(_ ctx: MySqlParser.SelectExpressionElementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectIntoVariables(_ ctx: MySqlParser.SelectIntoVariablesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectIntoVariables(_ ctx: MySqlParser.SelectIntoVariablesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectIntoDumpFile(_ ctx: MySqlParser.SelectIntoDumpFileContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectIntoDumpFile(_ ctx: MySqlParser.SelectIntoDumpFileContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectIntoTextFile(_ ctx: MySqlParser.SelectIntoTextFileContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectIntoTextFile(_ ctx: MySqlParser.SelectIntoTextFileContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectFieldsInto(_ ctx: MySqlParser.SelectFieldsIntoContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectFieldsInto(_ ctx: MySqlParser.SelectFieldsIntoContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSelectLinesInto(_ ctx: MySqlParser.SelectLinesIntoContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSelectLinesInto(_ ctx: MySqlParser.SelectLinesIntoContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFromClause(_ ctx: MySqlParser.FromClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFromClause(_ ctx: MySqlParser.FromClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterGroupByClause(_ ctx: MySqlParser.GroupByClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitGroupByClause(_ ctx: MySqlParser.GroupByClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHavingClause(_ ctx: MySqlParser.HavingClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHavingClause(_ ctx: MySqlParser.HavingClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWindowClause(_ ctx: MySqlParser.WindowClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWindowClause(_ ctx: MySqlParser.WindowClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterGroupByItem(_ ctx: MySqlParser.GroupByItemContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitGroupByItem(_ ctx: MySqlParser.GroupByItemContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLimitClause(_ ctx: MySqlParser.LimitClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLimitClause(_ ctx: MySqlParser.LimitClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLimitClauseAtom(_ ctx: MySqlParser.LimitClauseAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLimitClauseAtom(_ ctx: MySqlParser.LimitClauseAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStartTransaction(_ ctx: MySqlParser.StartTransactionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStartTransaction(_ ctx: MySqlParser.StartTransactionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBeginWork(_ ctx: MySqlParser.BeginWorkContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBeginWork(_ ctx: MySqlParser.BeginWorkContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCommitWork(_ ctx: MySqlParser.CommitWorkContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCommitWork(_ ctx: MySqlParser.CommitWorkContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRollbackWork(_ ctx: MySqlParser.RollbackWorkContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRollbackWork(_ ctx: MySqlParser.RollbackWorkContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSavepointStatement(_ ctx: MySqlParser.SavepointStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSavepointStatement(_ ctx: MySqlParser.SavepointStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRollbackStatement(_ ctx: MySqlParser.RollbackStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRollbackStatement(_ ctx: MySqlParser.RollbackStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReleaseStatement(_ ctx: MySqlParser.ReleaseStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReleaseStatement(_ ctx: MySqlParser.ReleaseStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLockTables(_ ctx: MySqlParser.LockTablesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLockTables(_ ctx: MySqlParser.LockTablesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUnlockTables(_ ctx: MySqlParser.UnlockTablesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUnlockTables(_ ctx: MySqlParser.UnlockTablesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetAutocommitStatement(_ ctx: MySqlParser.SetAutocommitStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetAutocommitStatement(_ ctx: MySqlParser.SetAutocommitStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetTransactionStatement(_ ctx: MySqlParser.SetTransactionStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetTransactionStatement(_ ctx: MySqlParser.SetTransactionStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTransactionMode(_ ctx: MySqlParser.TransactionModeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTransactionMode(_ ctx: MySqlParser.TransactionModeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLockTableElement(_ ctx: MySqlParser.LockTableElementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLockTableElement(_ ctx: MySqlParser.LockTableElementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLockAction(_ ctx: MySqlParser.LockActionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLockAction(_ ctx: MySqlParser.LockActionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTransactionOption(_ ctx: MySqlParser.TransactionOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTransactionOption(_ ctx: MySqlParser.TransactionOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTransactionLevel(_ ctx: MySqlParser.TransactionLevelContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTransactionLevel(_ ctx: MySqlParser.TransactionLevelContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterChangeMaster(_ ctx: MySqlParser.ChangeMasterContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitChangeMaster(_ ctx: MySqlParser.ChangeMasterContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterChangeReplicationFilter(_ ctx: MySqlParser.ChangeReplicationFilterContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitChangeReplicationFilter(_ ctx: MySqlParser.ChangeReplicationFilterContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPurgeBinaryLogs(_ ctx: MySqlParser.PurgeBinaryLogsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPurgeBinaryLogs(_ ctx: MySqlParser.PurgeBinaryLogsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterResetMaster(_ ctx: MySqlParser.ResetMasterContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitResetMaster(_ ctx: MySqlParser.ResetMasterContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterResetSlave(_ ctx: MySqlParser.ResetSlaveContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitResetSlave(_ ctx: MySqlParser.ResetSlaveContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStartSlave(_ ctx: MySqlParser.StartSlaveContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStartSlave(_ ctx: MySqlParser.StartSlaveContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStopSlave(_ ctx: MySqlParser.StopSlaveContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStopSlave(_ ctx: MySqlParser.StopSlaveContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStartGroupReplication(_ ctx: MySqlParser.StartGroupReplicationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStartGroupReplication(_ ctx: MySqlParser.StartGroupReplicationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStopGroupReplication(_ ctx: MySqlParser.StopGroupReplicationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStopGroupReplication(_ ctx: MySqlParser.StopGroupReplicationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMasterStringOption(_ ctx: MySqlParser.MasterStringOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMasterStringOption(_ ctx: MySqlParser.MasterStringOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMasterDecimalOption(_ ctx: MySqlParser.MasterDecimalOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMasterDecimalOption(_ ctx: MySqlParser.MasterDecimalOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMasterBoolOption(_ ctx: MySqlParser.MasterBoolOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMasterBoolOption(_ ctx: MySqlParser.MasterBoolOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMasterRealOption(_ ctx: MySqlParser.MasterRealOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMasterRealOption(_ ctx: MySqlParser.MasterRealOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMasterUidListOption(_ ctx: MySqlParser.MasterUidListOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMasterUidListOption(_ ctx: MySqlParser.MasterUidListOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStringMasterOption(_ ctx: MySqlParser.StringMasterOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStringMasterOption(_ ctx: MySqlParser.StringMasterOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDecimalMasterOption(_ ctx: MySqlParser.DecimalMasterOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDecimalMasterOption(_ ctx: MySqlParser.DecimalMasterOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBoolMasterOption(_ ctx: MySqlParser.BoolMasterOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBoolMasterOption(_ ctx: MySqlParser.BoolMasterOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterChannelOption(_ ctx: MySqlParser.ChannelOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitChannelOption(_ ctx: MySqlParser.ChannelOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDoDbReplication(_ ctx: MySqlParser.DoDbReplicationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDoDbReplication(_ ctx: MySqlParser.DoDbReplicationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIgnoreDbReplication(_ ctx: MySqlParser.IgnoreDbReplicationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIgnoreDbReplication(_ ctx: MySqlParser.IgnoreDbReplicationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDoTableReplication(_ ctx: MySqlParser.DoTableReplicationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDoTableReplication(_ ctx: MySqlParser.DoTableReplicationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIgnoreTableReplication(_ ctx: MySqlParser.IgnoreTableReplicationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIgnoreTableReplication(_ ctx: MySqlParser.IgnoreTableReplicationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWildDoTableReplication(_ ctx: MySqlParser.WildDoTableReplicationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWildDoTableReplication(_ ctx: MySqlParser.WildDoTableReplicationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWildIgnoreTableReplication(_ ctx: MySqlParser.WildIgnoreTableReplicationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWildIgnoreTableReplication(_ ctx: MySqlParser.WildIgnoreTableReplicationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRewriteDbReplication(_ ctx: MySqlParser.RewriteDbReplicationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRewriteDbReplication(_ ctx: MySqlParser.RewriteDbReplicationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTablePair(_ ctx: MySqlParser.TablePairContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTablePair(_ ctx: MySqlParser.TablePairContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterThreadType(_ ctx: MySqlParser.ThreadTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitThreadType(_ ctx: MySqlParser.ThreadTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterGtidsUntilOption(_ ctx: MySqlParser.GtidsUntilOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitGtidsUntilOption(_ ctx: MySqlParser.GtidsUntilOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMasterLogUntilOption(_ ctx: MySqlParser.MasterLogUntilOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMasterLogUntilOption(_ ctx: MySqlParser.MasterLogUntilOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRelayLogUntilOption(_ ctx: MySqlParser.RelayLogUntilOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRelayLogUntilOption(_ ctx: MySqlParser.RelayLogUntilOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSqlGapsUntilOption(_ ctx: MySqlParser.SqlGapsUntilOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSqlGapsUntilOption(_ ctx: MySqlParser.SqlGapsUntilOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUserConnectionOption(_ ctx: MySqlParser.UserConnectionOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUserConnectionOption(_ ctx: MySqlParser.UserConnectionOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPasswordConnectionOption(_ ctx: MySqlParser.PasswordConnectionOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPasswordConnectionOption(_ ctx: MySqlParser.PasswordConnectionOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDefaultAuthConnectionOption(_ ctx: MySqlParser.DefaultAuthConnectionOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDefaultAuthConnectionOption(_ ctx: MySqlParser.DefaultAuthConnectionOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPluginDirConnectionOption(_ ctx: MySqlParser.PluginDirConnectionOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPluginDirConnectionOption(_ ctx: MySqlParser.PluginDirConnectionOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterGtuidSet(_ ctx: MySqlParser.GtuidSetContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitGtuidSet(_ ctx: MySqlParser.GtuidSetContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterXaStartTransaction(_ ctx: MySqlParser.XaStartTransactionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitXaStartTransaction(_ ctx: MySqlParser.XaStartTransactionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterXaEndTransaction(_ ctx: MySqlParser.XaEndTransactionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitXaEndTransaction(_ ctx: MySqlParser.XaEndTransactionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterXaPrepareStatement(_ ctx: MySqlParser.XaPrepareStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitXaPrepareStatement(_ ctx: MySqlParser.XaPrepareStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterXaCommitWork(_ ctx: MySqlParser.XaCommitWorkContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitXaCommitWork(_ ctx: MySqlParser.XaCommitWorkContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterXaRollbackWork(_ ctx: MySqlParser.XaRollbackWorkContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitXaRollbackWork(_ ctx: MySqlParser.XaRollbackWorkContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterXaRecoverWork(_ ctx: MySqlParser.XaRecoverWorkContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitXaRecoverWork(_ ctx: MySqlParser.XaRecoverWorkContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPrepareStatement(_ ctx: MySqlParser.PrepareStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPrepareStatement(_ ctx: MySqlParser.PrepareStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExecuteStatement(_ ctx: MySqlParser.ExecuteStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExecuteStatement(_ ctx: MySqlParser.ExecuteStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDeallocatePrepare(_ ctx: MySqlParser.DeallocatePrepareContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDeallocatePrepare(_ ctx: MySqlParser.DeallocatePrepareContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoutineBody(_ ctx: MySqlParser.RoutineBodyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoutineBody(_ ctx: MySqlParser.RoutineBodyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBlockStatement(_ ctx: MySqlParser.BlockStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBlockStatement(_ ctx: MySqlParser.BlockStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCaseStatement(_ ctx: MySqlParser.CaseStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCaseStatement(_ ctx: MySqlParser.CaseStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIfStatement(_ ctx: MySqlParser.IfStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIfStatement(_ ctx: MySqlParser.IfStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIterateStatement(_ ctx: MySqlParser.IterateStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIterateStatement(_ ctx: MySqlParser.IterateStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLeaveStatement(_ ctx: MySqlParser.LeaveStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLeaveStatement(_ ctx: MySqlParser.LeaveStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLoopStatement(_ ctx: MySqlParser.LoopStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLoopStatement(_ ctx: MySqlParser.LoopStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRepeatStatement(_ ctx: MySqlParser.RepeatStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRepeatStatement(_ ctx: MySqlParser.RepeatStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterReturnStatement(_ ctx: MySqlParser.ReturnStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitReturnStatement(_ ctx: MySqlParser.ReturnStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWhileStatement(_ ctx: MySqlParser.WhileStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWhileStatement(_ ctx: MySqlParser.WhileStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCloseCursor(_ ctx: MySqlParser.CloseCursorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCloseCursor(_ ctx: MySqlParser.CloseCursorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFetchCursor(_ ctx: MySqlParser.FetchCursorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFetchCursor(_ ctx: MySqlParser.FetchCursorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterOpenCursor(_ ctx: MySqlParser.OpenCursorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitOpenCursor(_ ctx: MySqlParser.OpenCursorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDeclareVariable(_ ctx: MySqlParser.DeclareVariableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDeclareVariable(_ ctx: MySqlParser.DeclareVariableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDeclareCondition(_ ctx: MySqlParser.DeclareConditionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDeclareCondition(_ ctx: MySqlParser.DeclareConditionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDeclareCursor(_ ctx: MySqlParser.DeclareCursorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDeclareCursor(_ ctx: MySqlParser.DeclareCursorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDeclareHandler(_ ctx: MySqlParser.DeclareHandlerContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDeclareHandler(_ ctx: MySqlParser.DeclareHandlerContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerConditionCode(_ ctx: MySqlParser.HandlerConditionCodeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerConditionCode(_ ctx: MySqlParser.HandlerConditionCodeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerConditionState(_ ctx: MySqlParser.HandlerConditionStateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerConditionState(_ ctx: MySqlParser.HandlerConditionStateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerConditionName(_ ctx: MySqlParser.HandlerConditionNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerConditionName(_ ctx: MySqlParser.HandlerConditionNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerConditionWarning(_ ctx: MySqlParser.HandlerConditionWarningContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerConditionWarning(_ ctx: MySqlParser.HandlerConditionWarningContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerConditionNotfound(_ ctx: MySqlParser.HandlerConditionNotfoundContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerConditionNotfound(_ ctx: MySqlParser.HandlerConditionNotfoundContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHandlerConditionException(_ ctx: MySqlParser.HandlerConditionExceptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHandlerConditionException(_ ctx: MySqlParser.HandlerConditionExceptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterProcedureSqlStatement(_ ctx: MySqlParser.ProcedureSqlStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitProcedureSqlStatement(_ ctx: MySqlParser.ProcedureSqlStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCaseAlternative(_ ctx: MySqlParser.CaseAlternativeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCaseAlternative(_ ctx: MySqlParser.CaseAlternativeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterElifAlternative(_ ctx: MySqlParser.ElifAlternativeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitElifAlternative(_ ctx: MySqlParser.ElifAlternativeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterUserMysqlV56(_ ctx: MySqlParser.AlterUserMysqlV56Context) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterUserMysqlV56(_ ctx: MySqlParser.AlterUserMysqlV56Context) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAlterUserMysqlV80(_ ctx: MySqlParser.AlterUserMysqlV80Context) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAlterUserMysqlV80(_ ctx: MySqlParser.AlterUserMysqlV80Context) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateUserMysqlV56(_ ctx: MySqlParser.CreateUserMysqlV56Context) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateUserMysqlV56(_ ctx: MySqlParser.CreateUserMysqlV56Context) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateUserMysqlV80(_ ctx: MySqlParser.CreateUserMysqlV80Context) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateUserMysqlV80(_ ctx: MySqlParser.CreateUserMysqlV80Context) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDropUser(_ ctx: MySqlParser.DropUserContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDropUser(_ ctx: MySqlParser.DropUserContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterGrantStatement(_ ctx: MySqlParser.GrantStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitGrantStatement(_ ctx: MySqlParser.GrantStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoleOption(_ ctx: MySqlParser.RoleOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoleOption(_ ctx: MySqlParser.RoleOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterGrantProxy(_ ctx: MySqlParser.GrantProxyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitGrantProxy(_ ctx: MySqlParser.GrantProxyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRenameUser(_ ctx: MySqlParser.RenameUserContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRenameUser(_ ctx: MySqlParser.RenameUserContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDetailRevoke(_ ctx: MySqlParser.DetailRevokeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDetailRevoke(_ ctx: MySqlParser.DetailRevokeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShortRevoke(_ ctx: MySqlParser.ShortRevokeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShortRevoke(_ ctx: MySqlParser.ShortRevokeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoleRevoke(_ ctx: MySqlParser.RoleRevokeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoleRevoke(_ ctx: MySqlParser.RoleRevokeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRevokeProxy(_ ctx: MySqlParser.RevokeProxyContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRevokeProxy(_ ctx: MySqlParser.RevokeProxyContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetPasswordStatement(_ ctx: MySqlParser.SetPasswordStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetPasswordStatement(_ ctx: MySqlParser.SetPasswordStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUserSpecification(_ ctx: MySqlParser.UserSpecificationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUserSpecification(_ ctx: MySqlParser.UserSpecificationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHashAuthOption(_ ctx: MySqlParser.HashAuthOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHashAuthOption(_ ctx: MySqlParser.HashAuthOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRandomAuthOption(_ ctx: MySqlParser.RandomAuthOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRandomAuthOption(_ ctx: MySqlParser.RandomAuthOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStringAuthOption(_ ctx: MySqlParser.StringAuthOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStringAuthOption(_ ctx: MySqlParser.StringAuthOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterModuleAuthOption(_ ctx: MySqlParser.ModuleAuthOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitModuleAuthOption(_ ctx: MySqlParser.ModuleAuthOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleAuthOption(_ ctx: MySqlParser.SimpleAuthOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleAuthOption(_ ctx: MySqlParser.SimpleAuthOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAuthOptionClause(_ ctx: MySqlParser.AuthOptionClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAuthOptionClause(_ ctx: MySqlParser.AuthOptionClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterModule(_ ctx: MySqlParser.ModuleContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitModule(_ ctx: MySqlParser.ModuleContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPasswordModuleOption(_ ctx: MySqlParser.PasswordModuleOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPasswordModuleOption(_ ctx: MySqlParser.PasswordModuleOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTlsOption(_ ctx: MySqlParser.TlsOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTlsOption(_ ctx: MySqlParser.TlsOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUserResourceOption(_ ctx: MySqlParser.UserResourceOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUserResourceOption(_ ctx: MySqlParser.UserResourceOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUserPasswordOption(_ ctx: MySqlParser.UserPasswordOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUserPasswordOption(_ ctx: MySqlParser.UserPasswordOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUserLockOption(_ ctx: MySqlParser.UserLockOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUserLockOption(_ ctx: MySqlParser.UserLockOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPrivelegeClause(_ ctx: MySqlParser.PrivelegeClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPrivelegeClause(_ ctx: MySqlParser.PrivelegeClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPrivilege(_ ctx: MySqlParser.PrivilegeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPrivilege(_ ctx: MySqlParser.PrivilegeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCurrentSchemaPriviLevel(_ ctx: MySqlParser.CurrentSchemaPriviLevelContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCurrentSchemaPriviLevel(_ ctx: MySqlParser.CurrentSchemaPriviLevelContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterGlobalPrivLevel(_ ctx: MySqlParser.GlobalPrivLevelContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitGlobalPrivLevel(_ ctx: MySqlParser.GlobalPrivLevelContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDefiniteSchemaPrivLevel(_ ctx: MySqlParser.DefiniteSchemaPrivLevelContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDefiniteSchemaPrivLevel(_ ctx: MySqlParser.DefiniteSchemaPrivLevelContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDefiniteFullTablePrivLevel(_ ctx: MySqlParser.DefiniteFullTablePrivLevelContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDefiniteFullTablePrivLevel(_ ctx: MySqlParser.DefiniteFullTablePrivLevelContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDefiniteFullTablePrivLevel2(_ ctx: MySqlParser.DefiniteFullTablePrivLevel2Context) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDefiniteFullTablePrivLevel2(_ ctx: MySqlParser.DefiniteFullTablePrivLevel2Context) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDefiniteTablePrivLevel(_ ctx: MySqlParser.DefiniteTablePrivLevelContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDefiniteTablePrivLevel(_ ctx: MySqlParser.DefiniteTablePrivLevelContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRenameUserClause(_ ctx: MySqlParser.RenameUserClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRenameUserClause(_ ctx: MySqlParser.RenameUserClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAnalyzeTable(_ ctx: MySqlParser.AnalyzeTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAnalyzeTable(_ ctx: MySqlParser.AnalyzeTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCheckTable(_ ctx: MySqlParser.CheckTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCheckTable(_ ctx: MySqlParser.CheckTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterChecksumTable(_ ctx: MySqlParser.ChecksumTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitChecksumTable(_ ctx: MySqlParser.ChecksumTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterOptimizeTable(_ ctx: MySqlParser.OptimizeTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitOptimizeTable(_ ctx: MySqlParser.OptimizeTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRepairTable(_ ctx: MySqlParser.RepairTableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRepairTable(_ ctx: MySqlParser.RepairTableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCheckTableOption(_ ctx: MySqlParser.CheckTableOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCheckTableOption(_ ctx: MySqlParser.CheckTableOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCreateUdfunction(_ ctx: MySqlParser.CreateUdfunctionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCreateUdfunction(_ ctx: MySqlParser.CreateUdfunctionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterInstallPlugin(_ ctx: MySqlParser.InstallPluginContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitInstallPlugin(_ ctx: MySqlParser.InstallPluginContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUninstallPlugin(_ ctx: MySqlParser.UninstallPluginContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUninstallPlugin(_ ctx: MySqlParser.UninstallPluginContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetVariable(_ ctx: MySqlParser.SetVariableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetVariable(_ ctx: MySqlParser.SetVariableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetCharset(_ ctx: MySqlParser.SetCharsetContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetCharset(_ ctx: MySqlParser.SetCharsetContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetNames(_ ctx: MySqlParser.SetNamesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetNames(_ ctx: MySqlParser.SetNamesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetPassword(_ ctx: MySqlParser.SetPasswordContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetPassword(_ ctx: MySqlParser.SetPasswordContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetTransaction(_ ctx: MySqlParser.SetTransactionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetTransaction(_ ctx: MySqlParser.SetTransactionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetAutocommit(_ ctx: MySqlParser.SetAutocommitContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetAutocommit(_ ctx: MySqlParser.SetAutocommitContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSetNewValueInsideTrigger(_ ctx: MySqlParser.SetNewValueInsideTriggerContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSetNewValueInsideTrigger(_ ctx: MySqlParser.SetNewValueInsideTriggerContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowMasterLogs(_ ctx: MySqlParser.ShowMasterLogsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowMasterLogs(_ ctx: MySqlParser.ShowMasterLogsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowLogEvents(_ ctx: MySqlParser.ShowLogEventsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowLogEvents(_ ctx: MySqlParser.ShowLogEventsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowObjectFilter(_ ctx: MySqlParser.ShowObjectFilterContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowObjectFilter(_ ctx: MySqlParser.ShowObjectFilterContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowColumns(_ ctx: MySqlParser.ShowColumnsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowColumns(_ ctx: MySqlParser.ShowColumnsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowCreateDb(_ ctx: MySqlParser.ShowCreateDbContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowCreateDb(_ ctx: MySqlParser.ShowCreateDbContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowCreateFullIdObject(_ ctx: MySqlParser.ShowCreateFullIdObjectContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowCreateFullIdObject(_ ctx: MySqlParser.ShowCreateFullIdObjectContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowCreateUser(_ ctx: MySqlParser.ShowCreateUserContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowCreateUser(_ ctx: MySqlParser.ShowCreateUserContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowEngine(_ ctx: MySqlParser.ShowEngineContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowEngine(_ ctx: MySqlParser.ShowEngineContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowGlobalInfo(_ ctx: MySqlParser.ShowGlobalInfoContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowGlobalInfo(_ ctx: MySqlParser.ShowGlobalInfoContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowErrors(_ ctx: MySqlParser.ShowErrorsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowErrors(_ ctx: MySqlParser.ShowErrorsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowCountErrors(_ ctx: MySqlParser.ShowCountErrorsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowCountErrors(_ ctx: MySqlParser.ShowCountErrorsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowSchemaFilter(_ ctx: MySqlParser.ShowSchemaFilterContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowSchemaFilter(_ ctx: MySqlParser.ShowSchemaFilterContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowRoutine(_ ctx: MySqlParser.ShowRoutineContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowRoutine(_ ctx: MySqlParser.ShowRoutineContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowGrants(_ ctx: MySqlParser.ShowGrantsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowGrants(_ ctx: MySqlParser.ShowGrantsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowIndexes(_ ctx: MySqlParser.ShowIndexesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowIndexes(_ ctx: MySqlParser.ShowIndexesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowOpenTables(_ ctx: MySqlParser.ShowOpenTablesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowOpenTables(_ ctx: MySqlParser.ShowOpenTablesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowProfile(_ ctx: MySqlParser.ShowProfileContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowProfile(_ ctx: MySqlParser.ShowProfileContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowSlaveStatus(_ ctx: MySqlParser.ShowSlaveStatusContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowSlaveStatus(_ ctx: MySqlParser.ShowSlaveStatusContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterVariableClause(_ ctx: MySqlParser.VariableClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitVariableClause(_ ctx: MySqlParser.VariableClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowCommonEntity(_ ctx: MySqlParser.ShowCommonEntityContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowCommonEntity(_ ctx: MySqlParser.ShowCommonEntityContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowFilter(_ ctx: MySqlParser.ShowFilterContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowFilter(_ ctx: MySqlParser.ShowFilterContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowGlobalInfoClause(_ ctx: MySqlParser.ShowGlobalInfoClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowGlobalInfoClause(_ ctx: MySqlParser.ShowGlobalInfoClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowSchemaEntity(_ ctx: MySqlParser.ShowSchemaEntityContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowSchemaEntity(_ ctx: MySqlParser.ShowSchemaEntityContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShowProfileType(_ ctx: MySqlParser.ShowProfileTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShowProfileType(_ ctx: MySqlParser.ShowProfileTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBinlogStatement(_ ctx: MySqlParser.BinlogStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBinlogStatement(_ ctx: MySqlParser.BinlogStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCacheIndexStatement(_ ctx: MySqlParser.CacheIndexStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCacheIndexStatement(_ ctx: MySqlParser.CacheIndexStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFlushStatement(_ ctx: MySqlParser.FlushStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFlushStatement(_ ctx: MySqlParser.FlushStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterKillStatement(_ ctx: MySqlParser.KillStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitKillStatement(_ ctx: MySqlParser.KillStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLoadIndexIntoCache(_ ctx: MySqlParser.LoadIndexIntoCacheContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLoadIndexIntoCache(_ ctx: MySqlParser.LoadIndexIntoCacheContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterResetStatement(_ ctx: MySqlParser.ResetStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitResetStatement(_ ctx: MySqlParser.ResetStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterShutdownStatement(_ ctx: MySqlParser.ShutdownStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitShutdownStatement(_ ctx: MySqlParser.ShutdownStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableIndexes(_ ctx: MySqlParser.TableIndexesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableIndexes(_ ctx: MySqlParser.TableIndexesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleFlushOption(_ ctx: MySqlParser.SimpleFlushOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleFlushOption(_ ctx: MySqlParser.SimpleFlushOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterChannelFlushOption(_ ctx: MySqlParser.ChannelFlushOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitChannelFlushOption(_ ctx: MySqlParser.ChannelFlushOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableFlushOption(_ ctx: MySqlParser.TableFlushOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableFlushOption(_ ctx: MySqlParser.TableFlushOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFlushTableOption(_ ctx: MySqlParser.FlushTableOptionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFlushTableOption(_ ctx: MySqlParser.FlushTableOptionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLoadedTableIndexes(_ ctx: MySqlParser.LoadedTableIndexesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLoadedTableIndexes(_ ctx: MySqlParser.LoadedTableIndexesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleDescribeStatement(_ ctx: MySqlParser.SimpleDescribeStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleDescribeStatement(_ ctx: MySqlParser.SimpleDescribeStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFullDescribeStatement(_ ctx: MySqlParser.FullDescribeStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFullDescribeStatement(_ ctx: MySqlParser.FullDescribeStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHelpStatement(_ ctx: MySqlParser.HelpStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHelpStatement(_ ctx: MySqlParser.HelpStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUseStatement(_ ctx: MySqlParser.UseStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUseStatement(_ ctx: MySqlParser.UseStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSignalStatement(_ ctx: MySqlParser.SignalStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSignalStatement(_ ctx: MySqlParser.SignalStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterResignalStatement(_ ctx: MySqlParser.ResignalStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitResignalStatement(_ ctx: MySqlParser.ResignalStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSignalConditionInformation(_ ctx: MySqlParser.SignalConditionInformationContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSignalConditionInformation(_ ctx: MySqlParser.SignalConditionInformationContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWithStatement(_ ctx: MySqlParser.WithStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWithStatement(_ ctx: MySqlParser.WithStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableStatement(_ ctx: MySqlParser.TableStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableStatement(_ ctx: MySqlParser.TableStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDiagnosticsStatement(_ ctx: MySqlParser.DiagnosticsStatementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDiagnosticsStatement(_ ctx: MySqlParser.DiagnosticsStatementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDiagnosticsConditionInformationName(_ ctx: MySqlParser.DiagnosticsConditionInformationNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDiagnosticsConditionInformationName(_ ctx: MySqlParser.DiagnosticsConditionInformationNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDescribeStatements(_ ctx: MySqlParser.DescribeStatementsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDescribeStatements(_ ctx: MySqlParser.DescribeStatementsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDescribeConnection(_ ctx: MySqlParser.DescribeConnectionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDescribeConnection(_ ctx: MySqlParser.DescribeConnectionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFullId(_ ctx: MySqlParser.FullIdContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFullId(_ ctx: MySqlParser.FullIdContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTableName(_ ctx: MySqlParser.TableNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTableName(_ ctx: MySqlParser.TableNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRoleName(_ ctx: MySqlParser.RoleNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRoleName(_ ctx: MySqlParser.RoleNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFullColumnName(_ ctx: MySqlParser.FullColumnNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFullColumnName(_ ctx: MySqlParser.FullColumnNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIndexColumnName(_ ctx: MySqlParser.IndexColumnNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIndexColumnName(_ ctx: MySqlParser.IndexColumnNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleUserName(_ ctx: MySqlParser.SimpleUserNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleUserName(_ ctx: MySqlParser.SimpleUserNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHostName(_ ctx: MySqlParser.HostNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHostName(_ ctx: MySqlParser.HostNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUserName(_ ctx: MySqlParser.UserNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUserName(_ ctx: MySqlParser.UserNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMysqlVariable(_ ctx: MySqlParser.MysqlVariableContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMysqlVariable(_ ctx: MySqlParser.MysqlVariableContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCharsetName(_ ctx: MySqlParser.CharsetNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCharsetName(_ ctx: MySqlParser.CharsetNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCollationName(_ ctx: MySqlParser.CollationNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCollationName(_ ctx: MySqlParser.CollationNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterEngineName(_ ctx: MySqlParser.EngineNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitEngineName(_ ctx: MySqlParser.EngineNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterEngineNameBase(_ ctx: MySqlParser.EngineNameBaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitEngineNameBase(_ ctx: MySqlParser.EngineNameBaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUuidSet(_ ctx: MySqlParser.UuidSetContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUuidSet(_ ctx: MySqlParser.UuidSetContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterXid(_ ctx: MySqlParser.XidContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitXid(_ ctx: MySqlParser.XidContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterXuidStringId(_ ctx: MySqlParser.XuidStringIdContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitXuidStringId(_ ctx: MySqlParser.XuidStringIdContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAuthPlugin(_ ctx: MySqlParser.AuthPluginContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAuthPlugin(_ ctx: MySqlParser.AuthPluginContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUid(_ ctx: MySqlParser.UidContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUid(_ ctx: MySqlParser.UidContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleId(_ ctx: MySqlParser.SimpleIdContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleId(_ ctx: MySqlParser.SimpleIdContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDottedId(_ ctx: MySqlParser.DottedIdContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDottedId(_ ctx: MySqlParser.DottedIdContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDecimalLiteral(_ ctx: MySqlParser.DecimalLiteralContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDecimalLiteral(_ ctx: MySqlParser.DecimalLiteralContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFileSizeLiteral(_ ctx: MySqlParser.FileSizeLiteralContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFileSizeLiteral(_ ctx: MySqlParser.FileSizeLiteralContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStringLiteral(_ ctx: MySqlParser.StringLiteralContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStringLiteral(_ ctx: MySqlParser.StringLiteralContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBooleanLiteral(_ ctx: MySqlParser.BooleanLiteralContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBooleanLiteral(_ ctx: MySqlParser.BooleanLiteralContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterHexadecimalLiteral(_ ctx: MySqlParser.HexadecimalLiteralContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitHexadecimalLiteral(_ ctx: MySqlParser.HexadecimalLiteralContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNullNotnull(_ ctx: MySqlParser.NullNotnullContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNullNotnull(_ ctx: MySqlParser.NullNotnullContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterConstant(_ ctx: MySqlParser.ConstantContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitConstant(_ ctx: MySqlParser.ConstantContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterStringDataType(_ ctx: MySqlParser.StringDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitStringDataType(_ ctx: MySqlParser.StringDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNationalVaryingStringDataType(_ ctx: MySqlParser.NationalVaryingStringDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNationalVaryingStringDataType(_ ctx: MySqlParser.NationalVaryingStringDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNationalStringDataType(_ ctx: MySqlParser.NationalStringDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNationalStringDataType(_ ctx: MySqlParser.NationalStringDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDimensionDataType(_ ctx: MySqlParser.DimensionDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDimensionDataType(_ ctx: MySqlParser.DimensionDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleDataType(_ ctx: MySqlParser.SimpleDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleDataType(_ ctx: MySqlParser.SimpleDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCollectionDataType(_ ctx: MySqlParser.CollectionDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCollectionDataType(_ ctx: MySqlParser.CollectionDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSpatialDataType(_ ctx: MySqlParser.SpatialDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSpatialDataType(_ ctx: MySqlParser.SpatialDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLongVarcharDataType(_ ctx: MySqlParser.LongVarcharDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLongVarcharDataType(_ ctx: MySqlParser.LongVarcharDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLongVarbinaryDataType(_ ctx: MySqlParser.LongVarbinaryDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLongVarbinaryDataType(_ ctx: MySqlParser.LongVarbinaryDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCollectionOptions(_ ctx: MySqlParser.CollectionOptionsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCollectionOptions(_ ctx: MySqlParser.CollectionOptionsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterConvertedDataType(_ ctx: MySqlParser.ConvertedDataTypeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitConvertedDataType(_ ctx: MySqlParser.ConvertedDataTypeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLengthOneDimension(_ ctx: MySqlParser.LengthOneDimensionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLengthOneDimension(_ ctx: MySqlParser.LengthOneDimensionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLengthTwoDimension(_ ctx: MySqlParser.LengthTwoDimensionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLengthTwoDimension(_ ctx: MySqlParser.LengthTwoDimensionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLengthTwoOptionalDimension(_ ctx: MySqlParser.LengthTwoOptionalDimensionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLengthTwoOptionalDimension(_ ctx: MySqlParser.LengthTwoOptionalDimensionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUidList(_ ctx: MySqlParser.UidListContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUidList(_ ctx: MySqlParser.UidListContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFullColumnNameList(_ ctx: MySqlParser.FullColumnNameListContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFullColumnNameList(_ ctx: MySqlParser.FullColumnNameListContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTables(_ ctx: MySqlParser.TablesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTables(_ ctx: MySqlParser.TablesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIndexColumnNames(_ ctx: MySqlParser.IndexColumnNamesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIndexColumnNames(_ ctx: MySqlParser.IndexColumnNamesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExpressions(_ ctx: MySqlParser.ExpressionsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExpressions(_ ctx: MySqlParser.ExpressionsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExpressionsWithDefaults(_ ctx: MySqlParser.ExpressionsWithDefaultsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExpressionsWithDefaults(_ ctx: MySqlParser.ExpressionsWithDefaultsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterConstants(_ ctx: MySqlParser.ConstantsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitConstants(_ ctx: MySqlParser.ConstantsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleStrings(_ ctx: MySqlParser.SimpleStringsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleStrings(_ ctx: MySqlParser.SimpleStringsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUserVariables(_ ctx: MySqlParser.UserVariablesContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUserVariables(_ ctx: MySqlParser.UserVariablesContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDefaultValue(_ ctx: MySqlParser.DefaultValueContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDefaultValue(_ ctx: MySqlParser.DefaultValueContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCurrentTimestamp(_ ctx: MySqlParser.CurrentTimestampContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCurrentTimestamp(_ ctx: MySqlParser.CurrentTimestampContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExpressionOrDefault(_ ctx: MySqlParser.ExpressionOrDefaultContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExpressionOrDefault(_ ctx: MySqlParser.ExpressionOrDefaultContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIfExists(_ ctx: MySqlParser.IfExistsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIfExists(_ ctx: MySqlParser.IfExistsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIfNotExists(_ ctx: MySqlParser.IfNotExistsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIfNotExists(_ ctx: MySqlParser.IfNotExistsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterOrReplace(_ ctx: MySqlParser.OrReplaceContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitOrReplace(_ ctx: MySqlParser.OrReplaceContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWaitNowaitClause(_ ctx: MySqlParser.WaitNowaitClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWaitNowaitClause(_ ctx: MySqlParser.WaitNowaitClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSpecificFunctionCall(_ ctx: MySqlParser.SpecificFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSpecificFunctionCall(_ ctx: MySqlParser.SpecificFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAggregateFunctionCall(_ ctx: MySqlParser.AggregateFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAggregateFunctionCall(_ ctx: MySqlParser.AggregateFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNonAggregateFunctionCall(_ ctx: MySqlParser.NonAggregateFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNonAggregateFunctionCall(_ ctx: MySqlParser.NonAggregateFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterScalarFunctionCall(_ ctx: MySqlParser.ScalarFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitScalarFunctionCall(_ ctx: MySqlParser.ScalarFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUdfFunctionCall(_ ctx: MySqlParser.UdfFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUdfFunctionCall(_ ctx: MySqlParser.UdfFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPasswordFunctionCall(_ ctx: MySqlParser.PasswordFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPasswordFunctionCall(_ ctx: MySqlParser.PasswordFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSimpleFunctionCall(_ ctx: MySqlParser.SimpleFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSimpleFunctionCall(_ ctx: MySqlParser.SimpleFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCurrentUser(_ ctx: MySqlParser.CurrentUserContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCurrentUser(_ ctx: MySqlParser.CurrentUserContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDataTypeFunctionCall(_ ctx: MySqlParser.DataTypeFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDataTypeFunctionCall(_ ctx: MySqlParser.DataTypeFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterValuesFunctionCall(_ ctx: MySqlParser.ValuesFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitValuesFunctionCall(_ ctx: MySqlParser.ValuesFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCaseExpressionFunctionCall(_ ctx: MySqlParser.CaseExpressionFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCaseExpressionFunctionCall(_ ctx: MySqlParser.CaseExpressionFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCaseFunctionCall(_ ctx: MySqlParser.CaseFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCaseFunctionCall(_ ctx: MySqlParser.CaseFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCharFunctionCall(_ ctx: MySqlParser.CharFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCharFunctionCall(_ ctx: MySqlParser.CharFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPositionFunctionCall(_ ctx: MySqlParser.PositionFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPositionFunctionCall(_ ctx: MySqlParser.PositionFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSubstrFunctionCall(_ ctx: MySqlParser.SubstrFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSubstrFunctionCall(_ ctx: MySqlParser.SubstrFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTrimFunctionCall(_ ctx: MySqlParser.TrimFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTrimFunctionCall(_ ctx: MySqlParser.TrimFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWeightFunctionCall(_ ctx: MySqlParser.WeightFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWeightFunctionCall(_ ctx: MySqlParser.WeightFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExtractFunctionCall(_ ctx: MySqlParser.ExtractFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExtractFunctionCall(_ ctx: MySqlParser.ExtractFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterGetFormatFunctionCall(_ ctx: MySqlParser.GetFormatFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitGetFormatFunctionCall(_ ctx: MySqlParser.GetFormatFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJsonValueFunctionCall(_ ctx: MySqlParser.JsonValueFunctionCallContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJsonValueFunctionCall(_ ctx: MySqlParser.JsonValueFunctionCallContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCaseFuncAlternative(_ ctx: MySqlParser.CaseFuncAlternativeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCaseFuncAlternative(_ ctx: MySqlParser.CaseFuncAlternativeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLevelWeightList(_ ctx: MySqlParser.LevelWeightListContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLevelWeightList(_ ctx: MySqlParser.LevelWeightListContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLevelWeightRange(_ ctx: MySqlParser.LevelWeightRangeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLevelWeightRange(_ ctx: MySqlParser.LevelWeightRangeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLevelInWeightListElement(_ ctx: MySqlParser.LevelInWeightListElementContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLevelInWeightListElement(_ ctx: MySqlParser.LevelInWeightListElementContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAggregateWindowedFunction(_ ctx: MySqlParser.AggregateWindowedFunctionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAggregateWindowedFunction(_ ctx: MySqlParser.AggregateWindowedFunctionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNonAggregateWindowedFunction(_ ctx: MySqlParser.NonAggregateWindowedFunctionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNonAggregateWindowedFunction(_ ctx: MySqlParser.NonAggregateWindowedFunctionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterOverClause(_ ctx: MySqlParser.OverClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitOverClause(_ ctx: MySqlParser.OverClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWindowSpec(_ ctx: MySqlParser.WindowSpecContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWindowSpec(_ ctx: MySqlParser.WindowSpecContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterWindowName(_ ctx: MySqlParser.WindowNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitWindowName(_ ctx: MySqlParser.WindowNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFrameClause(_ ctx: MySqlParser.FrameClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFrameClause(_ ctx: MySqlParser.FrameClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFrameUnits(_ ctx: MySqlParser.FrameUnitsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFrameUnits(_ ctx: MySqlParser.FrameUnitsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFrameExtent(_ ctx: MySqlParser.FrameExtentContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFrameExtent(_ ctx: MySqlParser.FrameExtentContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFrameBetween(_ ctx: MySqlParser.FrameBetweenContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFrameBetween(_ ctx: MySqlParser.FrameBetweenContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFrameRange(_ ctx: MySqlParser.FrameRangeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFrameRange(_ ctx: MySqlParser.FrameRangeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPartitionClause(_ ctx: MySqlParser.PartitionClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPartitionClause(_ ctx: MySqlParser.PartitionClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterScalarFunctionName(_ ctx: MySqlParser.ScalarFunctionNameContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitScalarFunctionName(_ ctx: MySqlParser.ScalarFunctionNameContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPasswordFunctionClause(_ ctx: MySqlParser.PasswordFunctionClauseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPasswordFunctionClause(_ ctx: MySqlParser.PasswordFunctionClauseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFunctionArgs(_ ctx: MySqlParser.FunctionArgsContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFunctionArgs(_ ctx: MySqlParser.FunctionArgsContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFunctionArg(_ ctx: MySqlParser.FunctionArgContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFunctionArg(_ ctx: MySqlParser.FunctionArgContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIsExpression(_ ctx: MySqlParser.IsExpressionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIsExpression(_ ctx: MySqlParser.IsExpressionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNotExpression(_ ctx: MySqlParser.NotExpressionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNotExpression(_ ctx: MySqlParser.NotExpressionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLogicalExpression(_ ctx: MySqlParser.LogicalExpressionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLogicalExpression(_ ctx: MySqlParser.LogicalExpressionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPredicateExpression(_ ctx: MySqlParser.PredicateExpressionContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPredicateExpression(_ ctx: MySqlParser.PredicateExpressionContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSoundsLikePredicate(_ ctx: MySqlParser.SoundsLikePredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSoundsLikePredicate(_ ctx: MySqlParser.SoundsLikePredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExpressionAtomPredicate(_ ctx: MySqlParser.ExpressionAtomPredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExpressionAtomPredicate(_ ctx: MySqlParser.ExpressionAtomPredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSubqueryComparisonPredicate(_ ctx: MySqlParser.SubqueryComparisonPredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSubqueryComparisonPredicate(_ ctx: MySqlParser.SubqueryComparisonPredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJsonMemberOfPredicate(_ ctx: MySqlParser.JsonMemberOfPredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJsonMemberOfPredicate(_ ctx: MySqlParser.JsonMemberOfPredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBinaryComparisonPredicate(_ ctx: MySqlParser.BinaryComparisonPredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBinaryComparisonPredicate(_ ctx: MySqlParser.BinaryComparisonPredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterInPredicate(_ ctx: MySqlParser.InPredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitInPredicate(_ ctx: MySqlParser.InPredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBetweenPredicate(_ ctx: MySqlParser.BetweenPredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBetweenPredicate(_ ctx: MySqlParser.BetweenPredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIsNullPredicate(_ ctx: MySqlParser.IsNullPredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIsNullPredicate(_ ctx: MySqlParser.IsNullPredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLikePredicate(_ ctx: MySqlParser.LikePredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLikePredicate(_ ctx: MySqlParser.LikePredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterRegexpPredicate(_ ctx: MySqlParser.RegexpPredicateContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitRegexpPredicate(_ ctx: MySqlParser.RegexpPredicateContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUnaryExpressionAtom(_ ctx: MySqlParser.UnaryExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUnaryExpressionAtom(_ ctx: MySqlParser.UnaryExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCollateExpressionAtom(_ ctx: MySqlParser.CollateExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCollateExpressionAtom(_ ctx: MySqlParser.CollateExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterVariableAssignExpressionAtom(_ ctx: MySqlParser.VariableAssignExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitVariableAssignExpressionAtom(_ ctx: MySqlParser.VariableAssignExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMysqlVariableExpressionAtom(_ ctx: MySqlParser.MysqlVariableExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMysqlVariableExpressionAtom(_ ctx: MySqlParser.MysqlVariableExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNestedExpressionAtom(_ ctx: MySqlParser.NestedExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNestedExpressionAtom(_ ctx: MySqlParser.NestedExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterNestedRowExpressionAtom(_ ctx: MySqlParser.NestedRowExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitNestedRowExpressionAtom(_ ctx: MySqlParser.NestedRowExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMathExpressionAtom(_ ctx: MySqlParser.MathExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMathExpressionAtom(_ ctx: MySqlParser.MathExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterExistsExpressionAtom(_ ctx: MySqlParser.ExistsExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitExistsExpressionAtom(_ ctx: MySqlParser.ExistsExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIntervalExpressionAtom(_ ctx: MySqlParser.IntervalExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIntervalExpressionAtom(_ ctx: MySqlParser.IntervalExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJsonExpressionAtom(_ ctx: MySqlParser.JsonExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJsonExpressionAtom(_ ctx: MySqlParser.JsonExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterSubqueryExpressionAtom(_ ctx: MySqlParser.SubqueryExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitSubqueryExpressionAtom(_ ctx: MySqlParser.SubqueryExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterConstantExpressionAtom(_ ctx: MySqlParser.ConstantExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitConstantExpressionAtom(_ ctx: MySqlParser.ConstantExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFunctionCallExpressionAtom(_ ctx: MySqlParser.FunctionCallExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFunctionCallExpressionAtom(_ ctx: MySqlParser.FunctionCallExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBinaryExpressionAtom(_ ctx: MySqlParser.BinaryExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBinaryExpressionAtom(_ ctx: MySqlParser.BinaryExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFullColumnNameExpressionAtom(_ ctx: MySqlParser.FullColumnNameExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFullColumnNameExpressionAtom(_ ctx: MySqlParser.FullColumnNameExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBitExpressionAtom(_ ctx: MySqlParser.BitExpressionAtomContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBitExpressionAtom(_ ctx: MySqlParser.BitExpressionAtomContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterUnaryOperator(_ ctx: MySqlParser.UnaryOperatorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitUnaryOperator(_ ctx: MySqlParser.UnaryOperatorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterComparisonOperator(_ ctx: MySqlParser.ComparisonOperatorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitComparisonOperator(_ ctx: MySqlParser.ComparisonOperatorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterLogicalOperator(_ ctx: MySqlParser.LogicalOperatorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitLogicalOperator(_ ctx: MySqlParser.LogicalOperatorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterBitOperator(_ ctx: MySqlParser.BitOperatorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitBitOperator(_ ctx: MySqlParser.BitOperatorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMultOperator(_ ctx: MySqlParser.MultOperatorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMultOperator(_ ctx: MySqlParser.MultOperatorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAddOperator(_ ctx: MySqlParser.AddOperatorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAddOperator(_ ctx: MySqlParser.AddOperatorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterJsonOperator(_ ctx: MySqlParser.JsonOperatorContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitJsonOperator(_ ctx: MySqlParser.JsonOperatorContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCharsetNameBase(_ ctx: MySqlParser.CharsetNameBaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCharsetNameBase(_ ctx: MySqlParser.CharsetNameBaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterTransactionLevelBase(_ ctx: MySqlParser.TransactionLevelBaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitTransactionLevelBase(_ ctx: MySqlParser.TransactionLevelBaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPrivilegesBase(_ ctx: MySqlParser.PrivilegesBaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPrivilegesBase(_ ctx: MySqlParser.PrivilegesBaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterIntervalTypeBase(_ ctx: MySqlParser.IntervalTypeBaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitIntervalTypeBase(_ ctx: MySqlParser.IntervalTypeBaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDataTypeBase(_ ctx: MySqlParser.DataTypeBaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDataTypeBase(_ ctx: MySqlParser.DataTypeBaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterKeywordsCanBeId(_ ctx: MySqlParser.KeywordsCanBeIdContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitKeywordsCanBeId(_ ctx: MySqlParser.KeywordsCanBeIdContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterFunctionNameBase(_ ctx: MySqlParser.FunctionNameBaseContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitFunctionNameBase(_ ctx: MySqlParser.FunctionNameBaseContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterEveryRule(_ ctx: ParserRuleContext) throws { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitEveryRule(_ ctx: ParserRuleContext) throws { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func visitTerminal(_ node: TerminalNode) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func visitErrorNode(_ node: ErrorNode) { }
}
