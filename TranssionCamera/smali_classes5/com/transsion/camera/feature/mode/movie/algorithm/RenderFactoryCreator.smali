.class public Lcom/transsion/camera/feature/mode/movie/algorithm/RenderFactoryCreator;
.super Ljava/lang/Object;
.source "RenderFactoryCreator.java"


# static fields
.field public static final EFFECT_TYPE:I = 0x1

.field public static final STUB_NULL_TYPE:I = 0x3

.field public static final STUB_TYPE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/transsion/camera/feature/mode/movie/algorithm/IRenderFactory;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 18
    new-instance p0, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/StubRenderFactory;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/stub/recorder/StubRenderFactory;-><init>(I)V

    return-object p0

    .line 15
    :cond_0
    new-instance p1, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/recorder/RenderFactory;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
