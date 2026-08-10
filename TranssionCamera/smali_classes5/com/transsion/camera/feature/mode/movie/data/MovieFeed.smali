.class public Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;
.super Ljava/lang/Object;
.source "MovieFeed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;
    }
.end annotation


# static fields
.field private static final AUDIO_TRIM_IN_KEY:Ljava/lang/String; = "audio_trim_in"

.field private static final AUDIO_TRIM_OUT_KEY:Ljava/lang/String; = "audio_trim_out"

.field private static final HEIGHT_KEY:Ljava/lang/String; = "movie_height"

.field private static final MUSIC_KEY:Ljava/lang/String; = "movie_music"

.field private static final ORIENTATION_KEY:Ljava/lang/String; = "movie_orientation"

.field private static final PART_COUNT_KEY:Ljava/lang/String; = "movie_part_number"

.field private static final PART_FILES_KEY:Ljava/lang/String; = "movie_part_file"

.field private static final PART_TRANS_EFFECT_KEY:Ljava/lang/String; = "movie_part_trans"

.field private static final WIDTH_KEY:Ljava/lang/String; = "movie_width"


# instance fields
.field private mAudioTrimIn:J

.field private mAudioTrimOut:J

.field private mHeight:I

.field private mMusicFilePath:Ljava/lang/String;

.field private mOrientation:I

.field private mPartCount:I

.field private mPartFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPartTrans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mMusicFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mWidth:I

    return p1
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mHeight:I

    return p1
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mOrientation:I

    return p1
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartCount:I

    return p1
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;J)J
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mAudioTrimIn:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;J)J
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mAudioTrimOut:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartFiles:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartTrans:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static create(Landroid/os/Bundle;)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;
    .locals 6

    .line 84
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;-><init>()V

    const-string v1, "movie_music"

    .line 85
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mMusicFilePath:Ljava/lang/String;

    const-string v1, "movie_width"

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mWidth:I

    const-string v1, "movie_height"

    .line 87
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mHeight:I

    const-string v1, "movie_orientation"

    .line 88
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mOrientation:I

    const-string v1, "movie_part_number"

    .line 89
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartCount:I

    const-string v1, "audio_trim_in"

    const-wide/16 v2, 0x0

    .line 90
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mAudioTrimIn:J

    const-string v1, "audio_trim_out"

    .line 91
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mAudioTrimOut:J

    const-string v1, "movie_part_file"

    .line 92
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartFiles:Ljava/util/ArrayList;

    const-string v1, "movie_part_trans"

    .line 93
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartTrans:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public createBundle()Landroid/os/Bundle;
    .locals 4

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mMusicFilePath:Ljava/lang/String;

    const-string v2, "movie_music"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mWidth:I

    const-string v2, "movie_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mHeight:I

    const-string v2, "movie_height"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mOrientation:I

    const-string v2, "movie_orientation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartCount:I

    const-string v2, "movie_part_number"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mAudioTrimIn:J

    const-string v3, "audio_trim_in"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mAudioTrimOut:J

    const-string v3, "audio_trim_out"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartFiles:Ljava/util/ArrayList;

    const-string v2, "movie_part_file"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartTrans:Ljava/util/ArrayList;

    const-string v1, "movie_part_trans"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public getAudioTrimIn()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mAudioTrimIn:J

    return-wide v0
.end method

.method public getAudioTrimOut()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mAudioTrimOut:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mHeight:I

    return p0
.end method

.method public getMusicFilePath()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mMusicFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mOrientation:I

    return p0
.end method

.method public getPartCount()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartCount:I

    return p0
.end method

.method public getPartFiles()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartFiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPartTrans()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mPartTrans:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 38
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->mWidth:I

    return p0
.end method
