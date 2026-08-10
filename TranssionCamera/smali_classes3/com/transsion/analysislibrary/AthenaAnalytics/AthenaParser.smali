.class public Lcom/transsion/analysislibrary/AthenaAnalytics/AthenaParser;
.super Ljava/lang/Object;
.source "AthenaParser.java"

# interfaces
.implements Lcom/transsion/analysislibrary/IParser;


# instance fields
.field private mAa:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1, p2, p3, p4}, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->getInstance(Landroid/content/Context;IZZ)Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/AthenaParser;->mAa:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

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

    .line 23
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    iget-object p0, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/AthenaParser;->mAa:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    invoke-virtual {p0, p1}, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendMsg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)V"
        }
    .end annotation

    .line 31
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 32
    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 34
    iget-object p0, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/AthenaParser;->mAa:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    invoke-virtual {p0, p1}, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->send(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_0
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 36
    iget-object p0, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/AthenaParser;->mAa:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->send(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 37
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 38
    iget-object p0, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/AthenaParser;->mAa:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->send(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object p0, p0, Lcom/transsion/analysislibrary/AthenaAnalytics/AthenaParser;->mAa:Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/analysislibrary/AthenaAnalytics/Aa;->send(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
