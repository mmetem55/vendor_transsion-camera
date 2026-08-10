.class public Lcom/transsion/camera/feature/mode/movie/MovieMessage;
.super Ljava/lang/Object;
.source "MovieMessage.java"


# static fields
.field public static final MOVIE_INFO:Ljava/lang/String; = "movie_info"

.field public static final REQUEST_CODE_PLAY_MOVIE:I = 0x64

.field public static final REQUEST_CODE_REVIEW_MOVIE:I = 0x65

.field public static final RESULT_MOVIE_DELETE:I = 0x2

.field public static final RESULT_MOVIE_SAVE:I = 0x1

.field public static final RESULT_MOVIE_SHARE:I = 0x3

.field public static final RESULT_UNKNOWN:I = -0x1

.field public static final REVIEW_ACTIVITY:Ljava/lang/String; = "com.transsion.camera.app.ReviewCameraActivity"

.field private static sResultCode:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResult()I
    .locals 1

    .line 34
    sget v0, Lcom/transsion/camera/feature/mode/movie/MovieMessage;->sResultCode:I

    return v0
.end method

.method public static setResult(I)V
    .locals 0

    .line 30
    sput p0, Lcom/transsion/camera/feature/mode/movie/MovieMessage;->sResultCode:I

    return-void
.end method
