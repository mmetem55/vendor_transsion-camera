.class public final synthetic Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    iget-object p0, p0, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->$r8$lambda$u1u3a04z8B5bxOWSC90N6aUiCak(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
