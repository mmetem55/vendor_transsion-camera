.class public Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;
.super Ljava/lang/Object;
.source "VideoQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoQualityValue"
.end annotation


# instance fields
.field public currentValue:Ljava/lang/String;

.field public headerKey:Ljava/lang/String;

.field public supportValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality$VideoQualityValue;->this$0:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
