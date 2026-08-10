.class public Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilterCapability;
.super Ljava/lang/Object;
.source "ArcFilterCapability.java"


# static fields
.field private static sSupportedFilterIds:Ljava/util/List;
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
    .locals 13

    const-string v0, "0"

    const-string v1, "67"

    const-string v2, "68"

    const-string v3, "69"

    const-string v4, "70"

    const-string v5, "71"

    const-string v6, "72"

    const-string v7, "73"

    const-string v8, "80"

    const-string v9, "81"

    const-string v10, "82"

    const-string v11, "83"

    const-string v12, "84"

    .line 20
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilterCapability;->sSupportedFilterIds:Ljava/util/List;

    return-void
.end method

.method public static getSupportedFilterIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilterCapability;->sSupportedFilterIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
