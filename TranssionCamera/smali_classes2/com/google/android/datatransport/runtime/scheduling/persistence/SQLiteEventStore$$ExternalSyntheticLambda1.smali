.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->$r8$lambda$YGHiEqA0cIR6XYPR-i_yZG2_mXk(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
