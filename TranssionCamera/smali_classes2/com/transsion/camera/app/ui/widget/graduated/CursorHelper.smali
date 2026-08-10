.class public Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;
.super Ljava/lang/Object;
.source "CursorHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExceptedHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createCursor(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;
    .locals 1

    .line 31
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PROFESSIONAL:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    if-ne p1, v0, :cond_0

    .line 32
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;)V

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorAndIndicatorFactory;->createCursor()Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PMASTER_BLUR:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    if-ne p1, v0, :cond_1

    .line 35
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/PTMasterDrawCursorAndIndicatorFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/PTMasterDrawCursorAndIndicatorFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;)V

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/PTMasterDrawCursorAndIndicatorFactory;->createCursor()Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    move-result-object p0

    return-object p0

    .line 37
    :cond_1
    new-instance p1, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorFactory;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorFactory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;)V

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/graduated/factory/cursor/DrawCursorFactory;->createCursor()Lcom/transsion/camera/app/ui/widget/graduated/cursor/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getExceptedHeight()F
    .locals 0

    .line 45
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->mExceptedHeight:F

    return p0
.end method

.method public setExceptedHeight(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/graduated/CursorHelper;->mExceptedHeight:F

    return-void
.end method
