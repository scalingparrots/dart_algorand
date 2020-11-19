import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'transaction_list.dart';

part 'pending_transactions.g.dart';

abstract class PendingTransactions
    implements Built<PendingTransactions, PendingTransactionsBuilder> {
  /* TotalTxns */
  @nullable
  @BuiltValueField(wireName: r'totalTxns')
  int get totalTxns;

  @nullable
  @BuiltValueField(wireName: r'truncatedTxns')
  TransactionList get truncatedTxns;

  // Boilerplate code needed to wire-up generated code
  PendingTransactions._();

  factory PendingTransactions([Function(PendingTransactionsBuilder b) updates]) =
      _$PendingTransactions;

  static Serializer<PendingTransactions> get serializer =>
      _$pendingTransactionsSerializer;
}
