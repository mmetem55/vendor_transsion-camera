.class final Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;
.super Ljava/lang/Object;
.source "AODExitUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/AODExitUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExitStatistician"
.end annotation


# instance fields
.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/manager/AODExitUIManager$1;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;)Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->showExitGuide()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->increase()V

    return-void
.end method

.method private getExitTimes()I
    .locals 3

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 178
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_aod_exit_success_times"

    const-string v2, "0"

    .line 177
    invoke-virtual {p0, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private increase()V
    .locals 4

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->getExitTimes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 172
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "key_aod_exit_success_times"

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v1, v2, v0, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private showExitGuide()Z
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/AODExitUIManager$ExitStatistician;->getExitTimes()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
