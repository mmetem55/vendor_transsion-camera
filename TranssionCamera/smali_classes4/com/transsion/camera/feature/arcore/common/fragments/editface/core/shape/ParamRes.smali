.class public Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;
.super Lcom/faceunity/pta_art/entity/FURes;
.source "ParamRes.java"


# instance fields
.field public paramMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/faceunity/pta_art/entity/FURes;-><init>()V

    .line 13
    iput p1, p0, Lcom/faceunity/pta_art/entity/FURes;->resId:I

    .line 14
    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;->paramMap:Ljava/util/HashMap;

    return-void
.end method
