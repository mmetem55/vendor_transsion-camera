.class Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;
.super Ljava/lang/Object;
.source "EffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/core/effect/EffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedComposerItem"
.end annotation


# instance fields
.field intensity:F

.field key:Ljava/lang/String;

.field node:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    iput-object p1, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    .line 725
    iput-object p2, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    .line 726
    iput p3, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->intensity:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 732
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 733
    :cond_1
    check-cast p1, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;

    .line 734
    iget-object v2, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    .line 735
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 740
    iget-object v1, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->node:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/bytedance/labcv/core/effect/EffectManager$SavedComposerItem;->key:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
