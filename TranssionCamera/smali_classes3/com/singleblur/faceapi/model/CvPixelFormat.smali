.class public final enum Lcom/singleblur/faceapi/model/CvPixelFormat;
.super Ljava/lang/Enum;
.source "CvPixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/CvPixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum BGR888:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum BGRA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum GRAY8:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum NV12:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum RGBA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field public static final enum YUV420P:Lcom/singleblur/faceapi/model/CvPixelFormat;

.field private static sImageFormats:[Lcom/singleblur/faceapi/model/CvPixelFormat;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v1, "GRAY8"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->GRAY8:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 6
    new-instance v1, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v3, "YUV420P"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/singleblur/faceapi/model/CvPixelFormat;->YUV420P:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 7
    new-instance v3, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v5, "NV12"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV12:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 8
    new-instance v5, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v7, "NV21"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 9
    new-instance v7, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v9, "BGRA8888"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/singleblur/faceapi/model/CvPixelFormat;->BGRA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 10
    new-instance v9, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v11, "BGR888"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/singleblur/faceapi/model/CvPixelFormat;->BGR888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    .line 11
    new-instance v11, Lcom/singleblur/faceapi/model/CvPixelFormat;

    const-string v13, "RGBA8888"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/singleblur/faceapi/model/CvPixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/singleblur/faceapi/model/CvPixelFormat;->RGBA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    const/4 v13, 0x7

    new-array v15, v13, [Lcom/singleblur/faceapi/model/CvPixelFormat;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    aput-object v11, v15, v14

    .line 3
    sput-object v15, Lcom/singleblur/faceapi/model/CvPixelFormat;->$VALUES:[Lcom/singleblur/faceapi/model/CvPixelFormat;

    new-array v13, v13, [Lcom/singleblur/faceapi/model/CvPixelFormat;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 15
    sput-object v13, Lcom/singleblur/faceapi/model/CvPixelFormat;->sImageFormats:[Lcom/singleblur/faceapi/model/CvPixelFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/singleblur/faceapi/model/CvPixelFormat;->nativeInt:I

    return-void
.end method

.method public static nativeToConfig(I)Lcom/singleblur/faceapi/model/CvPixelFormat;
    .locals 1

    .line 28
    sget-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->sImageFormats:[Lcom/singleblur/faceapi/model/CvPixelFormat;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/CvPixelFormat;
    .locals 1

    .line 3
    const-class v0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/CvPixelFormat;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/CvPixelFormat;
    .locals 1

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->$VALUES:[Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/CvPixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/CvPixelFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/singleblur/faceapi/model/CvPixelFormat;->nativeInt:I

    return p0
.end method
