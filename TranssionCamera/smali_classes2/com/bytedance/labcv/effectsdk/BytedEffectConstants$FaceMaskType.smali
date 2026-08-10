.class public final enum Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;
.super Ljava/lang/Enum;
.source "BytedEffectConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/effectsdk/BytedEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceMaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

.field public static final enum FACE_MASK_FACE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

.field public static final enum FACE_MASK_MOUTH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

.field public static final enum FACE_MASK_TEETH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1130
    new-instance v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    const-string v1, "FACE_MASK_FACE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;->FACE_MASK_FACE:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    .line 1134
    new-instance v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    const-string v4, "FACE_MASK_TEETH"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;->FACE_MASK_TEETH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    .line 1138
    new-instance v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    const-string v7, "FACE_MASK_MOUTH"

    invoke-direct {v4, v7, v6, v5}, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;->FACE_MASK_MOUTH:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    new-array v3, v3, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v6

    .line 1126
    sput-object v3, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1141
    iput p3, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;
    .locals 1

    .line 1126
    const-class v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;
    .locals 1

    .line 1126
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;->$VALUES:[Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    invoke-virtual {v0}, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 1145
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$FaceMaskType;->value:I

    return p0
.end method
