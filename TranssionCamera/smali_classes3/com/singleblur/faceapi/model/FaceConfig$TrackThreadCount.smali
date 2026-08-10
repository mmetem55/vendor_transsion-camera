.class public final enum Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;
.super Ljava/lang/Enum;
.source "FaceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/singleblur/faceapi/model/FaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackThreadCount"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

.field public static final enum DEFAULT_CONFIG:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

.field public static final enum TWO_THREAD:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    new-instance v0, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    const-string v1, "DEFAULT_CONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->DEFAULT_CONFIG:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    .line 56
    new-instance v1, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    const-string v3, "TWO_THREAD"

    const/4 v4, 0x1

    const/high16 v5, 0x110000

    invoke-direct {v1, v3, v4, v5}, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 53
    sput-object v3, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->$VALUES:[Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;
    .locals 1

    .line 53
    const-class v0, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    return-object p0
.end method

.method public static values()[Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;
    .locals 1

    .line 53
    sget-object v0, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->$VALUES:[Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    invoke-virtual {v0}, [Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/singleblur/faceapi/model/FaceConfig$TrackThreadCount;->value:I

    return p0
.end method
