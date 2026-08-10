.class public final enum Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;
.super Ljava/lang/Enum;
.source "FaceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singleblur/faceapi/model/FaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceImageResize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

.field public static final enum DEFAULT_CONFIG:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_1280W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_320W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_640W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    const-string v1, "DEFAULT_CONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->DEFAULT_CONFIG:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    .line 14
    new-instance v1, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    const-string v3, "RESIZE_320W"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    .line 15
    new-instance v3, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    const-string v6, "RESIZE_640W"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v5, v7}, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_640W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    .line 16
    new-instance v6, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    const-string v8, "RESIZE_1280W"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_1280W:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    new-array v7, v7, [Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v5

    aput-object v6, v7, v9

    .line 11
    sput-object v7, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->$VALUES:[Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;
    .locals 1

    .line 11
    const-class v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;
    .locals 1

    .line 11
    sget-object v0, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->$VALUES:[Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->value:I

    return p0
.end method
