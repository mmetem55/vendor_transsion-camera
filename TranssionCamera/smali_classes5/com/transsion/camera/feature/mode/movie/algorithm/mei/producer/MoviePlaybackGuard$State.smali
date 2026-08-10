.class public final enum Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;
.super Ljava/lang/Enum;
.source "MoviePlaybackGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

.field public static final enum LOCKED:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

.field public static final enum UNLOCKED:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    const-string v1, "UNLOCKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;->UNLOCKED:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    .line 27
    new-instance v1, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    const-string v3, "LOCKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;->LOCKED:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 25
    sput-object v3, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;
    .locals 1

    .line 25
    const-class v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;
    .locals 1

    .line 25
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;->$VALUES:[Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard$State;

    return-object v0
.end method
