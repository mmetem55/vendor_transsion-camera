.class public final synthetic Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    invoke-static {p0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->$r8$lambda$7WZwi1OQFLRXfxjcHUZx9ZtAQds(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
