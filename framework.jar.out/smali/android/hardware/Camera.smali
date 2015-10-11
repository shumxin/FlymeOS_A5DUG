.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$Coordinate;,
        Landroid/hardware/Camera$CameraMetaDataCallback;,
        Landroid/hardware/Camera$CameraDataCallback;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$Ot;,
        Landroid/hardware/Camera$OtDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$HtcCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_ALL_MSGS:I = 0xffff

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_HTC_CALLBACK:I = 0x8000

.field private static final CAMERA_MSG_META_DATA:I = 0x2000

.field private static final CAMERA_MSG_OT_METADATA:I = 0x4000

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_STATS_DATA:I = 0x1000

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field public static final CAMERA_STEREO_PROHIBIT:I = 0x3d0

.field private static final DEBUG:Z = false

.field private static final DTAG:Ljava/lang/String; = "Camera2Mode"

.field private static final EACCESS:I = -0xd

.field private static final EBUSY:I = -0x10

.field private static final EINVAL:I = -0x16

.field private static final ENODEV:I = -0x13

.field private static final ENOSYS:I = -0x26

.field private static final EOPNOTSUPP:I = -0x5f

.field private static final EUSERS:I = -0x57

.field private static final HTC_CALLBACK_CAPTURE_RESULT:I = 0xd

.field private static final MASK_HTC_CALLBACK:I = 0x7fff

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Camera"

.field private static hasSubCam:Z

.field private static sIndexOfFront:I

.field private static sIndexOfMain:I

.field private static sIndexOfSub:I

.field private static sIsFront:Z

.field private static sIsMain:Z

.field private static sMainCam:Landroid/hardware/Camera;

.field private static sMainLooper:Landroid/os/Looper;

.field private static sSubCam:Landroid/hardware/Camera;

.field private static sSubCamParam:Landroid/hardware/Camera$Parameters;


# instance fields
.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

.field private mCameraId:I

.field private mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

.field private mConcateJpg:[B

.field private mEnableSubPreview:Z

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mHtcCallback:Landroid/hardware/Camera$HtcCallback;

.field private mHtcHDKCallback:Ljava/lang/Object;

.field private mIsMainCamPreviewing:Z

.field private mIsReleased:Z

.field private mIsSubCamChecked:Z

.field private mIsSubCamPreviewing:Z

.field private mIsSubCamTakePic:Z

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mJpg:[B

.field private mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field private mMetadataPtr:J

.field private mNativeContext:J

.field private mOneShot:Z

.field private mOtListener:Landroid/hardware/Camera$OtDetectionListener;

.field private mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mUsingPreviewAllocation:Z

.field private mVteEnable:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    sput-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    .line 241
    sput-boolean v0, Landroid/hardware/Camera;->sIsMain:Z

    .line 242
    sput-boolean v0, Landroid/hardware/Camera;->sIsFront:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 245
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsReleased:Z

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    .line 247
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    .line 248
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 249
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    .line 250
    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 258
    iput-boolean v1, p0, Landroid/hardware/Camera;->mVteEnable:Z

    .line 805
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsReleased:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    iput-boolean v2, p0, Landroid/hardware/Camera;->mVteEnable:Z

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->hook_cameraInitNormal(I)I

    move-result v0

    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    sparse-switch v0, :sswitch_data_0

    .line 781
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 778
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 784
    :cond_0
    return-void

    .line 774
    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 210
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 245
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsReleased:Z

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    .line 247
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    .line 248
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 249
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    .line 250
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 258
    iput-boolean v2, p0, Landroid/hardware/Camera;->mVteEnable:Z

    .line 671
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    .line 672
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    sparse-switch v0, :sswitch_data_0

    .line 695
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because some methods are not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 682
    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the hal version is not supported by this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the input arugments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_0
    return-void

    .line 673
    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_3
        -0x57 -> :sswitch_6
        -0x26 -> :sswitch_2
        -0x16 -> :sswitch_4
        -0x13 -> :sswitch_1
        -0x10 -> :sswitch_5
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private static native _getNumberOfCameras()I
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _startPreview()V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 156
    sget v0, Landroid/hardware/Camera;->sIndexOfFront:I

    return v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)[B
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mJpg:[B

    return-object v0
.end method

.method static synthetic access$1002(Landroid/hardware/Camera;[B)[B
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B

    .prologue
    .line 156
    iput-object p1, p0, Landroid/hardware/Camera;->mJpg:[B

    return-object p1
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)[B
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mConcateJpg:[B

    return-object v0
.end method

.method static synthetic access$1102(Landroid/hardware/Camera;[B)[B
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B

    .prologue
    .line 156
    iput-object p1, p0, Landroid/hardware/Camera;->mConcateJpg:[B

    return-object p1
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 156
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/Camera;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Landroid/hardware/Camera;->mVteEnable:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/hardware/Camera;)Landroid/hardware/Camera$OtDetectionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mOtListener:Landroid/hardware/Camera$OtDetectionListener;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$2500([BI)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .prologue
    .line 156
    invoke-static {p0, p1}, Landroid/hardware/Camera;->byteToInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/hardware/Camera;)Landroid/hardware/Camera$HtcCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/hardware/Camera;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mHtcHDKCallback:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    return v0
.end method

.method static synthetic access$600()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$700()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    return v0
.end method

.method static synthetic access$802(Landroid/hardware/Camera;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    return p1
.end method

.method static synthetic access$900(Landroid/hardware/Camera;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->sendJpgCallback([BLandroid/hardware/Camera;)V

    return-void
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .prologue
    .line 1337
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 1339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1343
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1344
    return-void
.end method

.method private static byteToInt([BI)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 2723
    const/4 v2, 0x0

    .line 2724
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 2725
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 2726
    .local v1, "shift":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 2724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2728
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method

.method private cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 749
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method private cameraInitVersion(II)I
    .locals 6
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 701
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 702
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 703
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 704
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 705
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 707
    iput-object v2, p0, Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;

    .line 708
    iput p1, p0, Landroid/hardware/Camera;->mCameraId:I

    .line 710
    iput-boolean v4, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 711
    iput-object v2, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 713
    iput-object v2, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    .line 714
    iput-object v2, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 718
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 719
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    invoke-direct {p0, v2, v0}, Landroid/hardware/Camera;->setEventHandler(ILandroid/os/Looper;)V

    .line 729
    :goto_0
    sget-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v2, :cond_1

    .line 730
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v3, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne v2, v3, :cond_0

    .line 731
    sget-boolean v2, Landroid/hardware/Camera;->sIsFront:Z

    invoke-direct {p0, v5, v2}, Landroid/hardware/Camera;->setState(ZZ)V

    .line 732
    sput-object p0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    .line 734
    :cond_0
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v3, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne v2, v3, :cond_1

    .line 735
    sget-boolean v2, Landroid/hardware/Camera;->sIsMain:Z

    invoke-direct {p0, v2, v5}, Landroid/hardware/Camera;->setState(ZZ)V

    .line 736
    invoke-direct {p0, v4}, Landroid/hardware/Camera;->processSubCam(Z)V

    .line 741
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, p1, p2, v1}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    move-result v2

    return v2

    .line 721
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 722
    iget v2, p0, Landroid/hardware/Camera;->mCameraId:I

    invoke-direct {p0, v2, v0}, Landroid/hardware/Camera;->setEventHandler(ILandroid/os/Looper;)V

    goto :goto_0

    .line 725
    :cond_3
    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method public static checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    .prologue
    .line 791
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableDepthMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2030
    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 2031
    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    sget-boolean v4, Landroid/hardware/Camera;->hasSubCam:Z

    if-nez v4, :cond_1

    .line 2049
    :cond_0
    :goto_0
    return v3

    .line 2035
    :cond_1
    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    iget-boolean v4, v4, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    if-eqz v4, :cond_0

    .line 2040
    const/4 v0, 0x0

    .line 2041
    .local v0, "result":I
    sget-object v4, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const-string v5, "enable_depth"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2042
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2043
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2046
    :cond_2
    if-ne v0, v2, :cond_3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method private enableSubCam()Z
    .locals 1

    .prologue
    .line 574
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/hardware/Camera;->sIsFront:Z

    if-eqz v0, :cond_1

    .line 575
    :cond_0
    const/4 v0, 0x0

    .line 577
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 330
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-lt p0, v3, :cond_0

    .line 332
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "wrong cameraId"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    :cond_0
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 335
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 336
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 338
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2717
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2718
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static getNumberOfCameras()I
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v0

    .line 315
    .local v0, "numOfCams":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 316
    const/4 v0, 0x2

    .line 318
    .end local v0    # "numOfCams":I
    :cond_0
    return v0
.end method

.method public static getNumberOfCameras_ssdTool(Landroid/content/Context;)I
    .locals 3
    .param p0, "caller"    # Landroid/content/Context;

    .prologue
    .line 515
    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v1

    .line 517
    .local v1, "numOfCams":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "PACKAGE_NAME":Ljava/lang/String;
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 519
    const-string v2, "com.htc.android.ssdtest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 527
    .end local v1    # "numOfCams":I
    :cond_0
    :goto_0
    return v1

    .line 523
    .restart local v1    # "numOfCams":I
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2882
    if-nez p0, :cond_0

    .line 2883
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2886
    :cond_0
    # invokes: Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->access$3200(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 2887
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2888
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 2890
    return-object v1
.end method

.method private getSubCamParameter()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 2569
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2570
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    sput-object v0, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    .line 2572
    :cond_0
    sget-object v0, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method private static isDisableSubCamByTest()Z
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 463
    .local v0, "result":Z
    return v0
.end method

.method private isRecordingMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2613
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2615
    const/4 v0, 0x1

    .line 2617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZoeMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2621
    const-string v3, "capture-mode"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2622
    .local v1, "value_ori":Ljava/lang/String;
    const-string/jumbo v3, "scene-mode"

    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2623
    .local v0, "value_new":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "zoe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "zoe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2625
    :cond_1
    const/4 v2, 0x1

    .line 2632
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_sendHistogramData()V
.end method

.method private final native native_sendMetaData()V
.end method

.method private final native native_setHistogramMode(Z)V
.end method

.method private final native native_setLongshot(Z)V
.end method

.method private final native native_setMetadataCb(Z)V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 560
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 561
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 562
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 563
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 564
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 566
    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    .line 569
    :goto_1
    return-object v3

    .line 562
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 8
    .param p0, "cameraId"    # I

    .prologue
    .line 481
    invoke-static {}, Landroid/hardware/Camera;->setCameraIndex()V

    .line 482
    sget v5, Landroid/hardware/Camera;->sIndexOfSub:I

    if-ne p0, v5, :cond_0

    .line 484
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "open wrong cameraId"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 486
    :cond_0
    const/4 v0, 0x0

    .line 487
    .local v0, "cameraObj":Landroid/hardware/Camera;
    const/4 v4, 0x5

    .line 489
    .local v4, "retry":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v4, :cond_1

    .line 492
    :try_start_0
    new-instance v1, Landroid/hardware/Camera;

    invoke-direct {v1, p0}, Landroid/hardware/Camera;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cameraObj":Landroid/hardware/Camera;
    .local v1, "cameraObj":Landroid/hardware/Camera;
    move-object v0, v1

    .line 503
    .end local v1    # "cameraObj":Landroid/hardware/Camera;
    .restart local v0    # "cameraObj":Landroid/hardware/Camera;
    :cond_1
    return-object v0

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/RuntimeException;
    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 496
    if-ne v3, v4, :cond_2

    .line 497
    const-string v5, "Camera2Mode"

    const-string v6, "fail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Fail to connect to camera service"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 489
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .prologue
    .line 656
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 798
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method public static open_subCame_ssdTool(Landroid/content/Context;)Landroid/hardware/Camera;
    .locals 3
    .param p0, "caller"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-static {}, Landroid/hardware/Camera;->setCameraIndex()V

    .line 539
    sget-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    if-nez v2, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-object v1

    .line 542
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "PACKAGE_NAME":Ljava/lang/String;
    const-string v2, "com.htc.android.ssdtest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 544
    new-instance v1, Landroid/hardware/Camera;

    sget v2, Landroid/hardware/Camera;->sIndexOfSub:I

    invoke-direct {v1, v2}, Landroid/hardware/Camera;-><init>(I)V

    goto :goto_0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1691
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1692
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1699
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 1696
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1697
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private processSubCam(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 590
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    if-nez v0, :cond_2

    .line 592
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/hardware/Camera;->enableSubCam()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Landroid/hardware/Camera;

    sget v1, Landroid/hardware/Camera;->sIndexOfSub:I

    invoke-direct {v0, v1}, Landroid/hardware/Camera;-><init>(I)V

    sput-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    .line 595
    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 596
    invoke-static {}, Landroid/hardware/Camera;->releaseStaticSubCam()V

    .line 598
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    .line 600
    :cond_2
    return-void
.end method

.method private static releaseStaticSubCam()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 856
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 858
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;->native_release()V

    .line 859
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/Camera;->mIsReleased:Z

    .line 860
    sput-object v2, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    .line 861
    sput-object v2, Landroid/hardware/Camera;->sSubCamParam:Landroid/hardware/Camera$Parameters;

    .line 863
    :cond_0
    return-void
.end method

.method private sendJpgCallback([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "jpgByte"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 1479
    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1480
    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mJpg:[B

    .line 1481
    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mConcateJpg:[B

    .line 1484
    :cond_0
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 1485
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mJpg:[B

    .line 1486
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    iput-object v1, v0, Landroid/hardware/Camera;->mConcateJpg:[B

    .line 1489
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v0, :cond_2

    .line 1491
    iget-object v0, p2, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1493
    :cond_2
    return-void
.end method

.method private static setCameraIndex()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 467
    invoke-static {}, Landroid/hardware/Camera;->_getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->isDisableSubCamByTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    sput-boolean v3, Landroid/hardware/Camera;->hasSubCam:Z

    .line 472
    :goto_0
    sput v2, Landroid/hardware/Camera;->sIndexOfMain:I

    .line 473
    sput v3, Landroid/hardware/Camera;->sIndexOfFront:I

    .line 474
    const/4 v0, 0x2

    sput v0, Landroid/hardware/Camera;->sIndexOfSub:I

    .line 475
    return-void

    .line 470
    :cond_0
    sput-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    goto :goto_0
.end method

.method private setEnableSubPreview(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2636
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2637
    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfFront:I

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "recording-hint"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->isRecordingMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->isZoeMode(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2640
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    .line 2646
    :cond_1
    :goto_0
    return-void

    .line 2642
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    goto :goto_0
.end method

.method private setEventHandler(ILandroid/os/Looper;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 604
    sget v0, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne p1, v0, :cond_0

    .line 605
    sput-object p2, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    .line 607
    :cond_0
    sget v0, Landroid/hardware/Camera;->sIndexOfSub:I

    if-ne p1, v0, :cond_1

    sget-object v0, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 608
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    sget-object v1, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v1}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 614
    :goto_0
    return-void

    .line 609
    :cond_1
    sget v0, Landroid/hardware/Camera;->sIndexOfMain:I

    if-eq p1, v0, :cond_2

    sget v0, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne p1, v0, :cond_3

    .line 610
    :cond_2
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 612
    :cond_3
    new-instance v0, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2576
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2577
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    :cond_0
    return-void
.end method

.method private setParametersSubCam(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "mainCamParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2582
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 2584
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2585
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/16 v1, 0x280

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2586
    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string/jumbo v1, "no-display-mode"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    if-eqz p1, :cond_0

    .line 2588
    const-string v0, "capture-mode"

    const-string v1, "capture-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    const-string/jumbo v0, "video-size"

    const-string/jumbo v1, "video-size"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    const-string v0, "front-camera-mode"

    const-string v1, "front-camera-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    const-string v0, "force-use-audio-enabled"

    const-string v1, "force-use-audio-enabled"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    const-string v0, "cam-mode"

    const-string v1, "cam-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    const-string v0, "hdr-supported"

    const-string v1, "hdr-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    const-string/jumbo v0, "video-720p60fps-supported"

    const-string/jumbo v1, "video-720p60fps-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    const-string/jumbo v0, "video-slow-motion-supported"

    const-string/jumbo v1, "video-slow-motion-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    const-string/jumbo v0, "video-hdr"

    const-string/jumbo v1, "video-hdr"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    const-string/jumbo v0, "ois_support"

    const-string/jumbo v1, "ois_support"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    const-string/jumbo v0, "video-slow-motion-supported"

    const-string/jumbo v1, "video-slow-motion-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    const-string/jumbo v0, "video-stabilization-supported"

    const-string/jumbo v1, "video-stabilization-supported"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    const-string/jumbo v0, "video-stabilization"

    const-string/jumbo v1, "video-stabilization"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    const-string/jumbo v0, "sound-off"

    const-string/jumbo v1, "sound-off"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    const-string v0, "antibanding"

    const-string v1, "antibanding"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    const-string v0, "front-camera-mode"

    const-string v1, "front-camera-mode"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    const-string/jumbo v0, "recording-hint"

    const-string/jumbo v1, "recording-hint"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    const-string v0, "cache-first-frame"

    const-string v1, "cache-first-frame"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    const-string/jumbo v0, "time-cons-post-processing"

    const-string/jumbo v1, "time-cons-post-processing"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setParametersByHTC(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    :cond_0
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {p0}, Landroid/hardware/Camera;->getSubCamParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2610
    :cond_1
    return-void
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method private setState(ZZ)V
    .locals 1
    .param p1, "main"    # Z
    .param p2, "front"    # Z

    .prologue
    .line 581
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 584
    :cond_0
    sput-boolean p1, Landroid/hardware/Camera;->sIsMain:Z

    .line 585
    sput-boolean p2, Landroid/hardware/Camera;->sIsFront:Z

    goto :goto_0
.end method

.method private startPreviewSubCam()V
    .locals 1

    .prologue
    .line 1094
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    if-eqz v0, :cond_0

    .line 1096
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 1097
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;->_startPreview()V

    .line 1099
    :cond_0
    return-void
.end method

.method private stopPreviewSubCam()V
    .locals 1

    .prologue
    .line 1118
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableSubPreview:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    if-eqz v0, :cond_0

    .line 1120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 1121
    sget-object v0, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 1123
    :cond_0
    return-void
.end method

.method private takePictureSubCam()V
    .locals 2

    .prologue
    .line 1968
    sget-boolean v1, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 1987
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    invoke-direct {p0}, Landroid/hardware/Camera;->enableDepthMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1978
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    .line 1980
    const/4 v0, 0x0

    .line 1981
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1982
    or-int/lit16 v0, v0, 0x100

    .line 1986
    :cond_2
    sget-object v1, Landroid/hardware/Camera;->sSubCam:Landroid/hardware/Camera;

    invoke-direct {v1, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    goto :goto_0
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1288
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1289
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1331
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 1332
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 1780
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1781
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1782
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1784
    return-void

    .line 1782
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cameraInitUnspecified(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 767
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1797
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1798
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1799
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1800
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1816
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1817
    return-void

    .line 1799
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1376
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1377
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1378
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1384
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1385
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1386
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1388
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    or-int/lit8 v5, p2, 0x20

    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1391
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final disableShutterSound()Z
    .locals 1

    .prologue
    .line 2200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2171
    if-nez p1, :cond_0

    .line 2172
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2173
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2175
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 2180
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    :goto_0
    return v3

    .line 2176
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    .restart local v1    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 2177
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 810
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 811
    return-void
.end method

.method public getCurrentFocusPosition()I
    .locals 4

    .prologue
    .line 2860
    new-instance v1, Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2861
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v2

    .line 2862
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2864
    const/4 v0, -0x1

    .line 2865
    .local v0, "focus_pos":I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2866
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2868
    :cond_0
    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2682
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2683
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2684
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2685
    return-object v0
.end method

.method public getWBCurrentCCT()I
    .locals 4

    .prologue
    .line 2697
    new-instance v1, Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2698
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v2

    .line 2699
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2701
    const/4 v0, 0x0

    .line 2702
    .local v0, "cct":I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2703
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2706
    :cond_0
    return v0
.end method

.method public final native lock()V
.end method

.method public final notifyVTE(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1046
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/hardware/Camera$1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/Camera$1;-><init>(Landroid/hardware/Camera;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1085
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1086
    return-void
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 825
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_1

    .line 826
    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsReleased:Z

    if-nez v0, :cond_1

    .line 828
    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne v0, v1, :cond_3

    sget-object v0, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    if-ne v0, p0, :cond_3

    .line 829
    sget-boolean v0, Landroid/hardware/Camera;->sIsFront:Z

    invoke-direct {p0, v2, v0}, Landroid/hardware/Camera;->setState(ZZ)V

    .line 830
    invoke-static {}, Landroid/hardware/Camera;->releaseStaticSubCam()V

    .line 831
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamPreviewing:Z

    .line 832
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamTakePic:Z

    .line 833
    sput-object v3, Landroid/hardware/Camera;->sMainCam:Landroid/hardware/Camera;

    .line 834
    sput-object v3, Landroid/hardware/Camera;->sMainLooper:Landroid/os/Looper;

    .line 838
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsReleased:Z

    .line 843
    :cond_1
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 845
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 846
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 849
    iget-boolean v0, p0, Landroid/hardware/Camera;->mVteEnable:Z

    if-eqz v0, :cond_2

    .line 850
    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->notifyVTE(Z)V

    .line 852
    :cond_2
    return-void

    .line 835
    :cond_3
    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfFront:I

    if-ne v0, v1, :cond_0

    .line 836
    sget-boolean v0, Landroid/hardware/Camera;->sIsMain:Z

    invoke-direct {p0, v0, v2}, Landroid/hardware/Camera;->setState(ZZ)V

    goto :goto_0
.end method

.method public final sendHistogramData()V
    .locals 0

    .prologue
    .line 2763
    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendHistogramData()V

    .line 2764
    return-void
.end method

.method public final sendMetaData()V
    .locals 0

    .prologue
    .line 2799
    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendMetaData()V

    .line 2800
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .prologue
    .line 1876
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1877
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1878
    return-void

    .line 1877
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 2553
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2554
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 2307
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 2308
    return-void
.end method

.method public final setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$CameraDataCallback;

    .prologue
    .line 2752
    iput-object p1, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    .line 2753
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setHistogramMode(Z)V

    .line 2754
    return-void

    .line 2753
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setHtcCallback(Landroid/hardware/Camera$HtcCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$HtcCallback;

    .prologue
    .line 1839
    iput-object p1, p0, Landroid/hardware/Camera;->mHtcCallback:Landroid/hardware/Camera$HtcCallback;

    .line 1840
    return-void
.end method

.method public final setHtcHDKCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cb"    # Ljava/lang/Object;

    .prologue
    .line 1843
    iput-object p1, p0, Landroid/hardware/Camera;->mHtcHDKCallback:Ljava/lang/Object;

    .line 1844
    return-void
.end method

.method public final setLongshot(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2810
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_setLongshot(Z)V

    .line 2811
    return-void
.end method

.method public final setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$CameraMetaDataCallback;

    .prologue
    .line 2789
    iput-object p1, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 2790
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setMetadataCb(Z)V

    .line 2791
    return-void

    .line 2790
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1206
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 1207
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 1208
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 1209
    if-eqz p1, :cond_0

    .line 1210
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1212
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 1213
    return-void

    :cond_1
    move v0, v1

    .line 1212
    goto :goto_0
.end method

.method public final setOtDetectionListener(Landroid/hardware/Camera$OtDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OtDetectionListener;

    .prologue
    .line 2261
    iput-object p1, p0, Landroid/hardware/Camera;->mOtListener:Landroid/hardware/Camera$OtDetectionListener;

    .line 2262
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2651
    iget-boolean v2, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v2, :cond_1

    .line 2652
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2653
    .local v1, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2654
    .local v0, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v3, :cond_1

    .line 2656
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2662
    .end local v0    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    .end local v1    # "newPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2665
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->setEnableSubPreview(Landroid/hardware/Camera$Parameters;)V

    .line 2666
    sget-boolean v2, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    if-nez v2, :cond_2

    .line 2667
    iput-object p1, p0, Landroid/hardware/Camera;->mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

    .line 2670
    :cond_2
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->setParametersSubCam(Landroid/hardware/Camera$Parameters;)V

    .line 2672
    return-void
.end method

.method public final native setPinchZoom(I)V
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x0

    .line 1180
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 1181
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 1182
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 1183
    if-eqz p1, :cond_0

    .line 1184
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1188
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 1189
    return-void

    :cond_1
    move v0, v1

    .line 1188
    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1442
    const/4 v2, 0x0

    .line 1443
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    .line 1444
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1445
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1446
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1448
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Preview is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1457
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    .line 1459
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1462
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-eq v3, v4, :cond_3

    .line 1464
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1467
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1468
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1472
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1473
    return-void

    .line 1470
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1244
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 1245
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 1246
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 1247
    if-eqz p1, :cond_0

    .line 1248
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1250
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 1251
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 948
    if-eqz p1, :cond_0

    .line 949
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 953
    :goto_0
    return-void

    .line 951
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 2238
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 2239
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 2343
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2344
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2346
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 2347
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2348
    return-void
.end method

.method public final startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1102
    iput-boolean v2, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 1104
    invoke-direct {p0}, Landroid/hardware/Camera;->_startPreview()V

    .line 1105
    sget-boolean v0, Landroid/hardware/Camera;->hasSubCam:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/Camera;->mIsSubCamChecked:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/hardware/Camera;->mCameraId:I

    sget v1, Landroid/hardware/Camera;->sIndexOfMain:I

    if-ne v0, v1, :cond_0

    .line 1106
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->processSubCam(Z)V

    .line 1107
    iget-object v0, p0, Landroid/hardware/Camera;->mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setParametersSubCam(Landroid/hardware/Camera$Parameters;)V

    .line 1108
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mParamsForSubFirstPreview:Landroid/hardware/Camera$Parameters;

    .line 1110
    :cond_0
    invoke-direct {p0}, Landroid/hardware/Camera;->startPreviewSubCam()V

    .line 1113
    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->notifyVTE(Z)V

    .line 1115
    return-void
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 2356
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 2357
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2358
    return-void
.end method

.method public final stopPreview()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1131
    iput-boolean v0, p0, Landroid/hardware/Camera;->mIsMainCamPreviewing:Z

    .line 1133
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 1134
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1135
    invoke-direct {p0}, Landroid/hardware/Camera;->stopPreviewSubCam()V

    .line 1138
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->notifyVTE(Z)V

    .line 1152
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1932
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1933
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 4
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1994
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1995
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1996
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1997
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 2000
    const/4 v0, 0x0

    .line 2001
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 2002
    or-int/lit8 v0, v0, 0x2

    .line 2004
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 2005
    or-int/lit16 v0, v0, 0x80

    .line 2008
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 2009
    iget-object v1, p0, Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    if-eqz v1, :cond_4

    .line 2010
    iget-object v1, p0, Landroid/hardware/Camera;->mMetadata:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->getNativeCameraMetadata()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/Camera;->mMetadataPtr:J

    .line 2015
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 2016
    or-int/lit8 v0, v0, 0x40

    .line 2018
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 2019
    or-int/lit16 v0, v0, 0x100

    .line 2023
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 2024
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2025
    invoke-direct {p0}, Landroid/hardware/Camera;->takePictureSubCam()V

    .line 2026
    return-void

    .line 2012
    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/Camera;->mMetadataPtr:J

    goto :goto_0
.end method

.method public final native unlock()V
.end method

.method private hook_cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    const/16 v0, 0x4c

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
