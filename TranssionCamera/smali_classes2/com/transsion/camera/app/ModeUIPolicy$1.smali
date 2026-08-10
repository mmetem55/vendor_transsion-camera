.class Lcom/transsion/camera/app/ModeUIPolicy$1;
.super Ljava/util/HashMap;
.source "ModeUIPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ModeUIPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 108
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
