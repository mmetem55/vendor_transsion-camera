.class Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec$1;
.super Ljava/lang/Object;
.source "PictureRatioSettingUISpec.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;->findMaxSizeEveryRatio(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec$1;->this$0:Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 140
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/pictureratio/PictureRatioSettingUISpec$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method
