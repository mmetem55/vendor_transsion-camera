.class public Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;
.super Ljava/lang/Object;
.source "ObjectLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private defaultDir:Ljava/lang/String;

.field private dir:Ljava/lang/String;

.field private sConsoleFilter:I

.field private sFileFilter:I

.field private sGlobalTag:Ljava/lang/String;

.field private sLog2ConsoleSwitch:Z

.field private sLog2FileSwitch:Z

.field private sLogBorderSwitch:Z

.field private sLogHeadSwitch:Z

.field private sLogSwitch:Z

.field private sTagIsSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    const/4 v2, 0x0

    .line 94
    iput-object v2, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    .line 96
    iput-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    .line 97
    iput-boolean v0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    .line 98
    iput-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    const/4 v0, 0x2

    .line 99
    iput v0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    .line 100
    iput v0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sFileFilter:I

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sFileFilter:I

    return p0
.end method

.method static synthetic access$1100(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->defaultDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->defaultDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    return p0
.end method


# virtual methods
.method public create()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;
    .locals 2

    .line 181
    new-instance v0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;-><init>(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$1;)V

    return-object v0
.end method

.method public setBorderSwitch(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderSwitch"
        }
    .end annotation

    .line 153
    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    return-object p0
.end method

.method public setGlobalTag(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 119
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    goto :goto_0

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    :goto_0
    return-object p0
.end method

.method public setLogHeadSwitch(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logHeadSwitch"
        }
    .end annotation

    .line 129
    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    return-object p0
.end method

.method public setLogSwitch(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logSwitch"
        }
    .end annotation

    .line 108
    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "console: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLog2ConsoleSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sTagIsSpace:Z

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sGlobalTag:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "head: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogHeadSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLog2FileSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->dir:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->defaultDir:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "border: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sLogBorderSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "consoleFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$300()[C

    move-result-object v1

    iget v2, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sConsoleFilter:I

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fileFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->access$300()[C

    move-result-object v1

    iget p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->sFileFilter:I

    add-int/lit8 p0, p0, -0x2

    aget-char p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
