.class public Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;
.super Ljava/lang/Object;
.source "ComposerNode.java"


# instance fields
.field private intensityArray:[F

.field private keyArray:[Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    new-array p1, p1, [F

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 21
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    new-array p1, p1, [F

    aput p3, p1, v1

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[F)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-void
.end method


# virtual methods
.method public getIntensityArray()[F
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-object p0
.end method

.method public getKeyArray()[Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public setIntensityArray([F)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->intensityArray:[F

    return-void
.end method

.method public setKeyArray([Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->keyArray:[Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->path:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->tag:Ljava/lang/String;

    return-void
.end method
