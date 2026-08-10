.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PortraitMatting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

.field public static final enum BEF_PORTAITMATTING_LARGE_MODEL:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

.field public static final enum BEF_PORTAITMATTING_SMALL_MODEL:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 652
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    const-string v1, "BEF_PORTAITMATTING_LARGE_MODEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;->BEF_PORTAITMATTING_LARGE_MODEL:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    .line 653
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    const-string v3, "BEF_PORTAITMATTING_SMALL_MODEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;->BEF_PORTAITMATTING_SMALL_MODEL:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 651
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 657
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 658
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;
    .locals 1

    .line 651
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;
    .locals 1

    .line 651
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 662
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PortraitMatting;->value:I

    return p0
.end method
