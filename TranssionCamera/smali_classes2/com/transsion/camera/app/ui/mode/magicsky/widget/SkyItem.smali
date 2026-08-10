.class public Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;
.super Ljava/lang/Object;
.source "SkyItem.java"


# instance fields
.field public final drawableId:I

.field public final skyName:Ljava/lang/String;

.field public final skyValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->drawableId:I

    .line 10
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->skyName:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;->skyValue:Ljava/lang/String;

    return-void
.end method
