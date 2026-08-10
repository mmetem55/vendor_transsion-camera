.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightClsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

.field public static final enum Backlight:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

.field public static final enum Cloudy:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

.field public static final enum Indoor_White:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

.field public static final enum Indoor_Yellow:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

.field public static final enum Indoor_weak:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

.field public static final enum Night:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

.field public static final enum None:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

.field public static final enum Sunny:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 806
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->None:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    .line 807
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    const-string v3, "Indoor_Yellow"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->Indoor_Yellow:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    .line 808
    new-instance v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    const-string v5, "Indoor_White"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->Indoor_White:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    .line 809
    new-instance v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    const-string v7, "Indoor_weak"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->Indoor_weak:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    .line 810
    new-instance v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    const-string v9, "Sunny"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->Sunny:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    .line 811
    new-instance v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    const-string v11, "Cloudy"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->Cloudy:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    .line 812
    new-instance v11, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    const-string v13, "Night"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->Night:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    .line 813
    new-instance v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    const-string v15, "Backlight"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->Backlight:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    const/4 v0, 0x5

    aput-object v9, v15, v0

    aput-object v11, v15, v14

    aput-object v13, v15, v12

    .line 805
    sput-object v15, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 816
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 817
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;
    .locals 1

    .line 805
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;
    .locals 1

    .line 805
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 821
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$LightClsType;->value:I

    return p0
.end method
