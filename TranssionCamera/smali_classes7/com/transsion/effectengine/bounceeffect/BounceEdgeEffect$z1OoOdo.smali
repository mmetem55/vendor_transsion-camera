.class public Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;-><init>(Landroid/view/View;ILz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;


# direct methods
.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V
    .locals 0

    iput-object p2, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    if-eqz p1, :cond_1

    iget-object p3, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOthrow:Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;

    if-eqz p3, :cond_1

    iget-boolean p1, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoObyte:Z

    if-eqz p1, :cond_1

    invoke-interface {p3, p2}, Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;->onOverScrollUpdated(F)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect$z1OoOdo;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOwhile:Z

    :cond_1
    return-void
.end method
