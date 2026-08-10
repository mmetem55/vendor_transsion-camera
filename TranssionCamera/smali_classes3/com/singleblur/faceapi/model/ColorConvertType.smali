.class public final enum Lcom/singleblur/faceapi/model/ColorConvertType;
.super Ljava/lang/Enum;
.source "ColorConvertType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/ColorConvertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum BGRA2RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV122BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV122RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV212BGR:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV212BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum NV212RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum RGBA2BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum RGBA2NV12:Lcom/singleblur/faceapi/model/ColorConvertType;

.field public static final enum RGBA2NV21:Lcom/singleblur/faceapi/model/ColorConvertType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v1, "NV212BGRA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->NV212BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 6
    new-instance v1, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v4, "NV212RGBA"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/singleblur/faceapi/model/ColorConvertType;->NV212RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 7
    new-instance v4, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v6, "RGBA2NV21"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/singleblur/faceapi/model/ColorConvertType;->RGBA2NV21:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 8
    new-instance v6, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v8, "NV122BGRA"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v7, v9}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/singleblur/faceapi/model/ColorConvertType;->NV122BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 9
    new-instance v8, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v10, "BGRA2RGBA"

    const/4 v11, 0x4

    const/16 v12, 0xe

    invoke-direct {v8, v10, v11, v12}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/singleblur/faceapi/model/ColorConvertType;->BGRA2RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 10
    new-instance v10, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v12, "RGBA2NV12"

    const/16 v13, 0x14

    invoke-direct {v10, v12, v9, v13}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/singleblur/faceapi/model/ColorConvertType;->RGBA2NV12:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 11
    new-instance v12, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v13, "NV122RGBA"

    const/4 v14, 0x6

    const/16 v15, 0x15

    invoke-direct {v12, v13, v14, v15}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/singleblur/faceapi/model/ColorConvertType;->NV122RGBA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 12
    new-instance v13, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v15, "RGBA2BGRA"

    const/4 v14, 0x7

    const/16 v9, 0x65

    invoke-direct {v13, v15, v14, v9}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/singleblur/faceapi/model/ColorConvertType;->RGBA2BGRA:Lcom/singleblur/faceapi/model/ColorConvertType;

    .line 13
    new-instance v9, Lcom/singleblur/faceapi/model/ColorConvertType;

    const-string v15, "NV212BGR"

    const/16 v14, 0x8

    const/16 v11, 0x3e9

    invoke-direct {v9, v15, v14, v11}, Lcom/singleblur/faceapi/model/ColorConvertType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/singleblur/faceapi/model/ColorConvertType;->NV212BGR:Lcom/singleblur/faceapi/model/ColorConvertType;

    const/16 v11, 0x9

    new-array v11, v11, [Lcom/singleblur/faceapi/model/ColorConvertType;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    const/4 v0, 0x4

    aput-object v8, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    const/4 v0, 0x7

    aput-object v13, v11, v0

    aput-object v9, v11, v14

    .line 3
    sput-object v11, Lcom/singleblur/faceapi/model/ColorConvertType;->$VALUES:[Lcom/singleblur/faceapi/model/ColorConvertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/singleblur/faceapi/model/ColorConvertType;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/ColorConvertType;
    .locals 1

    .line 3
    const-class v0, Lcom/singleblur/faceapi/model/ColorConvertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/ColorConvertType;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/ColorConvertType;
    .locals 1

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/ColorConvertType;->$VALUES:[Lcom/singleblur/faceapi/model/ColorConvertType;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/ColorConvertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/ColorConvertType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 22
    iget p0, p0, Lcom/singleblur/faceapi/model/ColorConvertType;->nativeInt:I

    return p0
.end method
