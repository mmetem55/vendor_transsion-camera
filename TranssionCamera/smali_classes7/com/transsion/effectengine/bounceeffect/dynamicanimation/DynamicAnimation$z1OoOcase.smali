.class public Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcase;
.super Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;-><init>(Ljava/lang/String;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoObyte;)V

    return-void
.end method


# virtual methods
.method public z1OoOdo(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method

.method public z1OoOdo(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
