.class public final enum Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;
.super Ljava/lang/Enum;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

.field public static final enum AUDIO:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

.field public static final enum VIDEO:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;->VIDEO:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    .line 57
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    const-string v3, "AUDIO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;->AUDIO:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 55
    sput-object v3, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;
    .locals 1

    .line 55
    const-class v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;
    .locals 1

    .line 55
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    return-object v0
.end method
