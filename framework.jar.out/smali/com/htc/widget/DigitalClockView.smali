.class public Lcom/htc/widget/DigitalClockView;
.super Landroid/widget/RelativeLayout;
.source "DigitalClockView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final DEBUG_FLAG:Z

.field private static final TAG:Ljava/lang/String; = "com.htc.widget.DigitalClockView"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mControls:Lcom/htc/widget/DigitalControls;

.field private mDateFormat:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/widget/DigitalClockView;->DEBUG_FLAG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/DigitalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/DigitalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DigitalClockView;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/htc/widget/DigitalClockView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/DigitalClockView$1;-><init>(Lcom/htc/widget/DigitalClockView;)V

    iput-object v0, p0, Lcom/htc/widget/DigitalClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/DigitalClockView;->mCalendar:Ljava/util/Calendar;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/DigitalClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/htc/widget/DigitalClockView;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/htc/widget/DigitalClockView;->updateTime()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/widget/DigitalClockView;->mControls:Lcom/htc/widget/DigitalControls;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 150
    iget-object v0, p0, Lcom/htc/widget/DigitalClockView;->mControls:Lcom/htc/widget/DigitalControls;

    iget-object v1, p0, Lcom/htc/widget/DigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/htc/widget/DigitalClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DigitalControls;->updateTime(Ljava/util/Calendar;Z)V

    .line 151
    iget-object v0, p0, Lcom/htc/widget/DigitalClockView;->mControls:Lcom/htc/widget/DigitalControls;

    iget-object v1, p0, Lcom/htc/widget/DigitalClockView;->mCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/htc/widget/DigitalClockView;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DigitalControls;->setTextDate(Ljava/util/Calendar;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTime()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/htc/widget/DigitalClockView;->onTimeChanged()V

    .line 143
    return-void
.end method


# virtual methods
.method public init(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 105
    sget-boolean v0, Lcom/htc/widget/DigitalClockView;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.widget.DigitalClockView"

    const-string/jumbo v1, "init: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    if-nez p1, :cond_1

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v0, Lcom/htc/widget/DigitalControls;

    invoke-direct {v0}, Lcom/htc/widget/DigitalControls;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DigitalClockView;->mControls:Lcom/htc/widget/DigitalControls;

    .line 110
    iget-object v0, p0, Lcom/htc/widget/DigitalClockView;->mControls:Lcom/htc/widget/DigitalControls;

    invoke-virtual {p0}, Lcom/htc/widget/DigitalClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/htc/widget/DigitalControls;->setControls(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;)V

    .line 111
    invoke-direct {p0}, Lcom/htc/widget/DigitalClockView;->updateTime()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 117
    iget-boolean v1, p0, Lcom/htc/widget/DigitalClockView;->mAttached:Z

    if-nez v1, :cond_0

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/DigitalClockView;->mAttached:Z

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/htc/widget/DigitalClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/DigitalClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/widget/DigitalClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 125
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/DigitalClockView;->updateTime()V

    .line 126
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 130
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 131
    iget-boolean v1, p0, Lcom/htc/widget/DigitalClockView;->mAttached:Z

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/DigitalClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/DigitalClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/DigitalClockView;->mAttached:Z

    .line 139
    :cond_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.htc.widget.DigitalClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 3
    .param p1, "dateFormat"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 91
    sget-boolean v0, Lcom/htc/widget/DigitalClockView;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    const-string v0, "com.htc.widget.DigitalClockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDateFormat: dateFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/htc/widget/DigitalClockView;->mDateFormat:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/htc/widget/DigitalClockView;->mControls:Lcom/htc/widget/DigitalControls;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/htc/widget/DigitalClockView;->mControls:Lcom/htc/widget/DigitalControls;

    iget-object v1, p0, Lcom/htc/widget/DigitalClockView;->mCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/htc/widget/DigitalClockView;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DigitalControls;->setTextDate(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 96
    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "timezone"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 74
    sget-boolean v1, Lcom/htc/widget/DigitalClockView;->DEBUG_FLAG:Z

    if-eqz v1, :cond_0

    const-string v1, "com.htc.widget.DigitalClockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTimeZone: timezone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 76
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 80
    .local v0, "tz":Ljava/util/TimeZone;
    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/DigitalClockView;->mCalendar:Ljava/util/Calendar;

    .line 81
    invoke-direct {p0}, Lcom/htc/widget/DigitalClockView;->updateTime()V

    .line 82
    return-void

    .line 78
    .end local v0    # "tz":Ljava/util/TimeZone;
    :cond_2
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .restart local v0    # "tz":Ljava/util/TimeZone;
    goto :goto_0
.end method
