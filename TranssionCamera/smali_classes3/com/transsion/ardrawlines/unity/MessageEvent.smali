.class public Lcom/transsion/ardrawlines/unity/MessageEvent;
.super Ljava/lang/Object;
.source "MessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MessageEvent"


# instance fields
.field private mEvent:Ljava/lang/String;

.field private mEventType:Lcom/transsion/ardrawlines/unity/MessageEvent$MessageEventType;

.field private mMessage:Ljava/lang/String;

.field private mMessage1:Ljava/lang/String;

.field private mMessage2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mEvent:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mEvent:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mMessage1:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mMessage2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mEvent:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage1()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mMessage1:Ljava/lang/String;

    return-object p0
.end method

.method public getMessage2()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mMessage2:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/ardrawlines/unity/MessageEvent;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; Message1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mMessage1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ; Message2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/ardrawlines/unity/MessageEvent;->mMessage2:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
