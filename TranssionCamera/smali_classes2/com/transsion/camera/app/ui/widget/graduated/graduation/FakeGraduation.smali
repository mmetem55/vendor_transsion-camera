.class public Lcom/transsion/camera/app/ui/widget/graduated/graduation/FakeGraduation;
.super Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;
.source "FakeGraduation.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/graduation/Graduation;->mCoordinate:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;F)V
    .locals 0

    return-void
.end method
