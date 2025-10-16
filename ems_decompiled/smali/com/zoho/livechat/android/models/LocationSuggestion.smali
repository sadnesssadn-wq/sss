.class public Lcom/zoho/livechat/android/models/LocationSuggestion;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public icon:Ljava/lang/String;

.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public vicinity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->lat:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->lng:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->icon:Ljava/lang/String;

    iput-object p4, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->vicinity:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVicinity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/LocationSuggestion;->vicinity:Ljava/lang/String;

    return-object v0
.end method
