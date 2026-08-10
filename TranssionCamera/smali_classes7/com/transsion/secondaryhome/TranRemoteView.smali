.class public Lcom/transsion/secondaryhome/TranRemoteView;
.super Landroid/widget/RemoteViews;
.source "TranRemoteView.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation


# static fields
.field public static final INVOKE_STUB_METHOD:Ljava/lang/String; = "invokeStubMethod"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PARAM:Ljava/lang/String; = "param"

.field public static final SET_VIEW_STUB_CLASS:Ljava/lang/String; = "setViewStubClass"

.field public static final TARGET_ID:Ljava/lang/String; = "target_id"


# instance fields
.field public mStubClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    .line 19
    iput-object p1, p0, Lcom/transsion/secondaryhome/TranRemoteView;->mStubClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addContentLayoutInDefaultStubView(II)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/16 p2, -0x64

    const-string v1, "addContextView"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/transsion/secondaryhome/TranRemoteView;->invokeDefaultStubView(IILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs invokeDefaultStubView(IILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 55
    const-class v0, Lcom/transsion/secondaryhome/view/DefaultStubView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/secondaryhome/TranRemoteView;->mStubClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/transsion/secondaryhome/TranParam;

    invoke-direct {v0}, Lcom/transsion/secondaryhome/TranParam;-><init>()V

    if-eqz p4, :cond_0

    .line 57
    array-length v1, p4

    if-lez v1, :cond_0

    .line 58
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    .line 59
    invoke-virtual {v0, v3}, Lcom/transsion/secondaryhome/TranParam;->addParam(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v1, "name"

    .line 63
    invoke-virtual {p4, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "target_id"

    .line 64
    invoke-virtual {p4, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "param"

    .line 65
    invoke-virtual {v0, p2, p4}, Lcom/transsion/secondaryhome/TranParam;->addInBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "invokeStubMethod"

    .line 66
    invoke-virtual {p0, p1, p2, p4}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invokeDefaultStubView method must set DefaultStubView"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs invokeStubView(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 81
    new-instance v0, Lcom/transsion/secondaryhome/TranParam;

    invoke-direct {v0}, Lcom/transsion/secondaryhome/TranParam;-><init>()V

    if-eqz p3, :cond_0

    .line 82
    array-length v1, p3

    if-lez v1, :cond_0

    .line 83
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 84
    invoke-virtual {v0, v3}, Lcom/transsion/secondaryhome/TranParam;->addParam(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "name"

    .line 88
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "param"

    .line 89
    invoke-virtual {v0, p2, p3}, Lcom/transsion/secondaryhome/TranParam;->addInBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "invokeStubMethod"

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setViewStubClass(ILjava/lang/String;)V
    .locals 1

    const-string v0, "setViewStubClass"

    .line 33
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p2, p0, Lcom/transsion/secondaryhome/TranRemoteView;->mStubClassName:Ljava/lang/String;

    return-void
.end method

.method toRemoteViews()Landroid/widget/RemoteViews;
    .locals 1

    .line 94
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {v0, p0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;)V

    return-object v0
.end method
