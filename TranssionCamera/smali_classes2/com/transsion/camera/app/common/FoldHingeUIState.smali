.class public Lcom/transsion/camera/app/common/FoldHingeUIState;
.super Ljava/lang/Object;
.source "FoldHingeUIState.java"


# direct methods
.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN STATE ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "state_tabletop_opened"

    return-object p0

    :cond_1
    const-string p0, "state_book_opened"

    return-object p0

    :cond_2
    const-string p0, "state_flat"

    return-object p0

    :cond_3
    const-string p0, "state_closed"

    return-object p0
.end method
