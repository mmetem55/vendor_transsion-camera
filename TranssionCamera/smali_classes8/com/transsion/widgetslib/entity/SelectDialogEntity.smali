.class public Lcom/transsion/widgetslib/entity/SelectDialogEntity;
.super Ljava/lang/Object;
.source "SelectDialogEntity.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/transsion/widgetslib/entity/SelectDialogEntity;->icon:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object p2, p0, Lcom/transsion/widgetslib/entity/SelectDialogEntity;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/transsion/widgetslib/entity/SelectDialogEntity;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/entity/SelectDialogEntity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/widgetslib/entity/SelectDialogEntity;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/transsion/widgetslib/entity/SelectDialogEntity;->title:Ljava/lang/String;

    return-void
.end method
