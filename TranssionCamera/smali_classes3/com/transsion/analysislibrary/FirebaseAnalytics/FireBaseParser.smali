.class public Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;
.super Ljava/lang/Object;
.source "FireBaseParser.java"

# interfaces
.implements Lcom/transsion/analysislibrary/IParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "FireBaseParser"


# instance fields
.field private mFa:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1, p2}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->getInstance(Landroid/content/Context;Z)Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->mFa:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    return-void
.end method


# virtual methods
.method public sendMsg(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)V"
        }
    .end annotation

    .line 21
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->mFa:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    invoke-virtual {p0, p1}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)V"
        }
    .end annotation

    .line 29
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 30
    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 32
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->mFa:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    invoke-virtual {p0, p1}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_0
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 34
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->mFa:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->send(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 35
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 36
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->mFa:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->send(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_2
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->mFa:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->send(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_3
    instance-of v0, p1, Ljava/lang/Exception;

    const-string v1, "can not parse"

    if-eqz v0, :cond_6

    .line 41
    check-cast p1, Ljava/lang/Exception;

    if-nez p2, :cond_4

    .line 43
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->mFa:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    invoke-virtual {p0, p1}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->exception(Ljava/lang/Exception;)V

    goto :goto_0

    .line 45
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 46
    check-cast p2, Ljava/lang/String;

    .line 47
    iget-object p0, p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->mFa:Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/analysislibrary/FirebaseAnalytics/Fa;->exception(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_5
    sget-object p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_6
    sget-object p0, Lcom/transsion/analysislibrary/FirebaseAnalytics/FireBaseParser;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
