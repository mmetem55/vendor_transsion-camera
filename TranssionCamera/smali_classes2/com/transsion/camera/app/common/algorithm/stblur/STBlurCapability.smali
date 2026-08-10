.class public Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapability;
.super Ljava/lang/Object;
.source "STBlurCapability.java"


# static fields
.field private static sSupportSTBlurModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "1"

    const-string v1, "0"

    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapability;->sSupportSTBlurModes:Ljava/util/List;

    return-void
.end method

.method public static getSupportSTBlurModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapability;->sSupportSTBlurModes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
