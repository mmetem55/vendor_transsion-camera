.class public Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;
.super Ljava/lang/Object;
.source "FunVideoMsgTag.java"


# static fields
.field public static final REQUEST_CODE_TO_REVIEW_FRAGMENT:I = 0x64

.field public static final RESULT_VIDEO_DELETE:I = 0x2

.field public static final RESULT_VIDEO_SAVE:I = 0x1

.field public static final RESULT_VIDEO_SHARE:I = 0x3

.field public static final RESULT_VIDEO_UNKOWN:I = 0x0

.field public static final RESULT_VIDEO_VSKIT_SHARE:I = 0x4

.field private static sFunVideoMsgTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getsFunVideoMsgTag()I
    .locals 1

    .line 18
    sget v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->sFunVideoMsgTag:I

    return v0
.end method

.method public static setsFunVideoMsgTag(I)V
    .locals 0

    .line 14
    sput p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->sFunVideoMsgTag:I

    return-void
.end method
