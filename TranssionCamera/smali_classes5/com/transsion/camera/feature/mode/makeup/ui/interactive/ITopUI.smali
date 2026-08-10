.class public interface abstract Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;
.super Ljava/lang/Object;
.source "ITopUI.java"


# static fields
.field public static final SELECT_FACE_BEAUTY:I = 0x0

.field public static final SELECT_MAKEUP:I = 0x2

.field public static final SELECT_SLIM_BODY:I = 0x1

.field public static final STATE_TO_SHOW_CONTRACT_BAR:I = 0x3

.field public static final STATE_TO_SHOW_RECYCLE_VIEW:I = 0x1

.field public static final STATE_TO_SHOW_SEEK_BAR:I = 0x2

.field public static final STATE_TO_SHOW_SWITCH_BAR:I


# virtual methods
.method public abstract notifyProgress(IIII)V
.end method

.method public abstract notifySelect(IZ)V
.end method

.method public abstract notifyState(IZ)V
.end method
