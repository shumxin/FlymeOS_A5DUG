.class public Lcom/htc/server/SetupAccount;
.super Ljava/lang/Object;
.source "SetupAccount.java"


# static fields
.field public static final ACTION_EAS_DELETE_ACCOUNT:Ljava/lang/String; = "com.htc.android.mail.eassvc.account.DELETE"

.field public static final ACTION_EAS_GET_DEVICE_ID:Ljava/lang/String; = "com.htc.android.mail.eassvc.device.GET_ID"

.field public static final ACTION_EAS_MDM_CREATE_ACCOUNT:Ljava/lang/String; = "com.htc.android.mail.eassvc.account.mdm.CREATE"

.field public static final ACTION_EAS_MDM_DELETE_ACCOUNT:Ljava/lang/String; = "com.htc.android.mail.eassvc.account.mdm.DELETE"

.field public static final ACTION_EAS_MDM_GET_DEVICE_ID:Ljava/lang/String; = "com.htc.android.mail.eassvc.device.mdm.GET_ID"

.field private static final EXTRA_EAS_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final EXTRA_EAS_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field private static final EXTRA_EAS_DOMAIN:Ljava/lang/String; = "domain"

.field private static final EXTRA_EAS_EMAIL_ADDRESS:Ljava/lang/String; = "emailAddr"

.field private static final EXTRA_EAS_PASSWORD:Ljava/lang/String; = "password"

.field private static final EXTRA_EAS_SERVER_ADDR:Ljava/lang/String; = "serverAddr"

.field private static final EXTRA_EAS_SET_DEFAULT_ACCOUNT:Ljava/lang/String; = "setDefaultAccount"

.field private static final EXTRA_EAS_SYNC_CALENDAR:Ljava/lang/String; = "syncCalendar"

.field private static final EXTRA_EAS_SYNC_CONTACTS:Ljava/lang/String; = "syncContacts"

.field private static final EXTRA_EAS_SYNC_MAIL:Ljava/lang/String; = "syncMail"

.field private static final EXTRA_EAS_SYNC_SCHEDULE:Ljava/lang/String; = "syncSchedule"

.field private static final EXTRA_EAS_SYNC_TASKS:Ljava/lang/String; = "syncTasks"

.field private static final EXTRA_EAS_USERNAME:Ljava/lang/String; = "username"

.field private static final EXTRA_EAS_USE_SSL:Ljava/lang/String; = "useSSL"

.field private static final TAG:Ljava/lang/String; = "SetupAccount"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEASAccount(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 258
    const-string v1, "SetupAccount"

    const-string v2, "addEASAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 261
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 263
    return-void
.end method

.method public static addEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "serverAddr"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "uname"    # Ljava/lang/String;
    .param p7, "password"    # Ljava/lang/String;
    .param p8, "useSSL"    # Z
    .param p9, "syncMail"    # Ljava/lang/Boolean;
    .param p10, "syncContacts"    # Ljava/lang/Boolean;
    .param p11, "syncCalendar"    # Ljava/lang/Boolean;
    .param p12, "syncTasks"    # Ljava/lang/Boolean;
    .param p13, "setDefaultAccount"    # Ljava/lang/Boolean;
    .param p14, "syncSchedule"    # Ljava/lang/Integer;

    .prologue
    .line 219
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "displayName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "emailAddr"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "serverAddr"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "domain"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "username"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "password"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "useSSL"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    if-eqz p9, :cond_0

    .line 228
    const-string v1, "syncMail"

    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    :cond_0
    if-eqz p10, :cond_1

    .line 231
    const-string v1, "syncContacts"

    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    :cond_1
    if-eqz p11, :cond_2

    .line 234
    const-string v1, "syncCalendar"

    invoke-virtual {p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    :cond_2
    if-eqz p12, :cond_3

    .line 237
    const-string v1, "syncTasks"

    invoke-virtual {p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    :cond_3
    if-eqz p13, :cond_4

    .line 240
    const-string v1, "setDefaultAccount"

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    :cond_4
    if-eqz p14, :cond_5

    .line 243
    const-string v1, "syncSchedule"

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/htc/server/SetupAccount;->addEASAccount(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method public static addEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "serverAddr"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "uname"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "useSSL"    # Z
    .param p8, "syncMail"    # Ljava/lang/Boolean;
    .param p9, "syncContacts"    # Ljava/lang/Boolean;
    .param p10, "syncCalendar"    # Ljava/lang/Boolean;
    .param p11, "syncTasks"    # Ljava/lang/Boolean;
    .param p12, "setDefaultAccount"    # Ljava/lang/Boolean;
    .param p13, "syncSchedule"    # Ljava/lang/Integer;

    .prologue
    .line 168
    const-string v1, "com.htc.android.mail.eassvc.account.mdm.CREATE"

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-static/range {v0 .. v14}, Lcom/htc/server/SetupAccount;->addEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 183
    return-void
.end method

.method public static deleteEASAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string v0, "com.htc.android.mail.eassvc.account.mdm.DELETE"

    invoke-static {p0, v0, p1}, Lcom/htc/server/SetupAccount;->deleteEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public static deleteEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v2, "SetupAccount"

    const-string v3, "deleteEASAccount"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "emailAddr"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 292
    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    const-string v0, "com.htc.android.mail.eassvc.device.mdm.GET_ID"

    invoke-static {p0, v0}, Lcom/htc/server/SetupAccount;->getDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 312
    const-string v1, "SetupAccount"

    const-string v2, "getDeviceId"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 316
    return-void
.end method
