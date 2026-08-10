.class public Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
.super Ljava/lang/Object;
.source "RequestType.java"


# static fields
.field private static final POOL_SIZE:I = 0x6

.field private static final sPool:[Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;


# instance fields
.field private mCommand:Z

.field private mConfigAll:Z

.field private mConfigSelf:Z

.field private mSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    .line 20
    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sPool:[Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 5

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sPool:[Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 31
    :try_start_0
    sget-object v2, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sPool:[Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 33
    aput-object v4, v2, v1

    .line 34
    monitor-exit v0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mSync:Z

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mCommand:Z

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigAll:Z

    .line 57
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigSelf:Z

    return-void
.end method


# virtual methods
.method public command(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mCommand:Z

    return-object p0
.end method

.method public command()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mCommand:Z

    return p0
.end method

.method public configAll(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigAll:Z

    return-object p0
.end method

.method public configAll()Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigAll:Z

    return p0
.end method

.method public configSelf(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigSelf:Z

    return-object p0
.end method

.method public configSelf()Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigSelf:Z

    return p0
.end method

.method public mergeRequest(Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 82
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mSync:Z

    iget-boolean v1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mSync:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mSync:Z

    .line 83
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mCommand:Z

    iget-boolean v1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mCommand:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mCommand:Z

    .line 84
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigAll:Z

    iget-boolean v1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigAll:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigAll:Z

    .line 85
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigSelf:Z

    iget-boolean v1, p1, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigSelf:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigSelf:Z

    .line 86
    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->recycle()V

    :cond_0
    return-void
.end method

.method public final recycle()V
    .locals 4

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sPool:[Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 44
    :try_start_0
    sget-object v2, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->sPool:[Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->reset()V

    .line 46
    aput-object p0, v2, v1

    .line 47
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sync(Z)Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mSync:Z

    return-object p0
.end method

.method public sync()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mSync:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestType{mSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mCommand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigAll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigSelf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/RequestType;->mConfigSelf:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
