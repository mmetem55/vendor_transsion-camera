.class public Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;
.super Ljava/lang/Object;
.source "MovieFeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "builder"
.end annotation


# static fields
.field private static final MICROSECONDS_UNIT:J = 0x3e8L


# instance fields
.field private mAudioTrimIn:J

.field private mAudioTrimOut:J

.field private mHeight:I

.field private final mMusicFilePath:Ljava/lang/String;

.field private mOrientation:I

.field private final mPartFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPartTrans:Ljava/util/ArrayList;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mPartFiles:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mPartTrans:Ljava/util/ArrayList;

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mMusicFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendAudioTrim(JJ)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 126
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mAudioTrimIn:J

    mul-long/2addr p3, v0

    .line 127
    iput-wide p3, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mAudioTrimOut:J

    return-object p0
.end method

.method public appendOrientation(I)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;
    .locals 0

    .line 121
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mOrientation:I

    return-object p0
.end method

.method public appendPart(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mPartFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mPartTrans:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public appendSize(II)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;
    .locals 0

    .line 115
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mWidth:I

    .line 116
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mHeight:I

    return-object p0
.end method

.method public build()Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;
    .locals 3

    .line 138
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;-><init>(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$1;)V

    .line 139
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mMusicFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->access$102(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mWidth:I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->access$202(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;I)I

    .line 141
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mHeight:I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->access$302(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;I)I

    .line 142
    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mOrientation:I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->access$402(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;I)I

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mPartFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->access$502(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;I)I

    .line 144
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mAudioTrimIn:J

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->access$602(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;J)J

    .line 145
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mAudioTrimOut:J

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->access$702(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;J)J

    .line 146
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mPartFiles:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->access$802(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed$builder;->mPartTrans:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->access$902(Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v0
.end method
