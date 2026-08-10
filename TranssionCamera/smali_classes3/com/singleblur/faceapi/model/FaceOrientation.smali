.class public final enum Lcom/singleblur/faceapi/model/FaceOrientation;
.super Ljava/lang/Enum;
.source "FaceOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/FaceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum DOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum LEFT:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum RIGHT:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

.field public static final enum UP:Lcom/singleblur/faceapi/model/FaceOrientation;

.field private static sFaceOrientations:[Lcom/singleblur/faceapi/model/FaceOrientation;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 5
    new-instance v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v1, "UP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 6
    new-instance v1, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v4, "LEFT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/singleblur/faceapi/model/FaceOrientation;->LEFT:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 7
    new-instance v4, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v6, "DOWN"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/singleblur/faceapi/model/FaceOrientation;->DOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 8
    new-instance v6, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v8, "RIGHT"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/singleblur/faceapi/model/FaceOrientation;->RIGHT:Lcom/singleblur/faceapi/model/FaceOrientation;

    .line 9
    new-instance v8, Lcom/singleblur/faceapi/model/FaceOrientation;

    const-string v11, "UNKNOWN"

    const/16 v12, 0xf

    invoke-direct {v8, v11, v7, v12}, Lcom/singleblur/faceapi/model/FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/singleblur/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    const/4 v11, 0x5

    new-array v13, v11, [Lcom/singleblur/faceapi/model/FaceOrientation;

    aput-object v0, v13, v2

    aput-object v1, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v9

    aput-object v8, v13, v7

    .line 3
    sput-object v13, Lcom/singleblur/faceapi/model/FaceOrientation;->$VALUES:[Lcom/singleblur/faceapi/model/FaceOrientation;

    const/16 v13, 0x10

    new-array v13, v13, [Lcom/singleblur/faceapi/model/FaceOrientation;

    const/4 v14, 0x0

    aput-object v14, v13, v2

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v14, v13, v9

    aput-object v4, v13, v7

    aput-object v14, v13, v11

    const/4 v0, 0x6

    aput-object v14, v13, v0

    const/4 v0, 0x7

    aput-object v14, v13, v0

    aput-object v6, v13, v10

    const/16 v0, 0x9

    aput-object v14, v13, v0

    const/16 v0, 0xa

    aput-object v14, v13, v0

    const/16 v0, 0xb

    aput-object v14, v13, v0

    const/16 v0, 0xc

    aput-object v14, v13, v0

    const/16 v0, 0xd

    aput-object v14, v13, v0

    const/16 v0, 0xe

    aput-object v14, v13, v0

    aput-object v8, v13, v12

    .line 17
    sput-object v13, Lcom/singleblur/faceapi/model/FaceOrientation;->sFaceOrientations:[Lcom/singleblur/faceapi/model/FaceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/singleblur/faceapi/model/FaceOrientation;->nativeInt:I

    return-void
.end method

.method public static nativeToOrientation(I)Lcom/singleblur/faceapi/model/FaceOrientation;
    .locals 1

    .line 27
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->sFaceOrientations:[Lcom/singleblur/faceapi/model/FaceOrientation;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/FaceOrientation;
    .locals 1

    .line 3
    const-class v0, Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/FaceOrientation;
    .locals 1

    .line 3
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->$VALUES:[Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/FaceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/FaceOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/singleblur/faceapi/model/FaceOrientation;->nativeInt:I

    return p0
.end method
