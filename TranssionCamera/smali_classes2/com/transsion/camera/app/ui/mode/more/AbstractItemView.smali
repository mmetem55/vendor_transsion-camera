.class public abstract Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;
.super Landroid/widget/RelativeLayout;
.source "AbstractItemView.java"


# instance fields
.field private mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getModeUIItem()Lcom/transsion/camera/app/ui/mode/ModeUIItem;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-object p0
.end method

.method public setModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->mModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method
