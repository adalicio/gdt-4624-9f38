#!/bin/false
# This file will be sourced in init.sh
# Namespace functions with provisioning_

# https://raw.githubusercontent.com/ai-dock/stable-diffusion-webui/main/config/provisioning/default.sh

### Edit the following arrays to suit your workflow

DISK_GB_REQUIRED=30

EXTENSIONS=(
    "https://github.com/Mikubill/sd-webui-controlnet"
    "https://github.com/d8ahazard/sd_dreambooth_extension"
    "https://github.com/deforum-art/sd-webui-deforum"
    "https://github.com/adieyal/sd-dynamic-prompts"
    "https://github.com/ototadana/sd-face-editor"
    "https://github.com/AlUlkesh/stable-diffusion-webui-images-browser"
    "https://github.com/hako-mikan/sd-webui-regional-prompter"
    "https://github.com/Coyote-A/ultimate-upscale-for-automatic1111"
    "https://github.com/fkunn1326/openpose-editor"
    "https://github.com/Gourieff/sd-webui-reactor"
    "https://github.com/thomasasfk/sd-webui-aspect-ratio-helper.git"
    "https://github.com/DominikDoom/a1111-sd-webui-tagcomplete.git"
    "https://github.com/BlafKing/sd-civitai-browser-plus.git"

)

CHECKPOINT_MODELS=(
    "https://civitai.com/api/download/models/72396"
    "https://civitai.com/api/download/models/330531"
    "https://civitai.com/api/download/models/90072"
    "https://civitai.com/api/download/models/184538"
    "https://civitai.com/api/download/models/130406"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/81744/model/epicdream.Y67C.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22epicdream_lullaby.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T224802Z&X-Amz-SignedHeaders=host&X-Amz-Signature=f738f6c9c1ee32ecab40ae323222efa2702cc5e9f084559cd2a63dc22e9ba714"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/2052543/2brealisticmix6662B.Mo4s.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22Realisticmix666_v666.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T224742Z&X-Amz-SignedHeaders=host&X-Amz-Signature=69966fab00b28758b5986e16612b0d7fca1e75429f16b3af7813ac4cf9391d6c"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/983375/incredibleworld4.wQK2.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22incredibleWorld_v40.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T224451Z&X-Amz-SignedHeaders=host&X-Amz-Signature=424ccbf0c70631fa481c733f153367ffa09c77d5b05dbeabf7dcc6ffc2bf3330"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/43555/model/faetasticversion2.TjlD.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22faetastic_Version2.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T224445Z&X-Amz-SignedHeaders=host&X-Amz-Signature=5b9a1ccc548521141db7822a9eca3953510411810f9f9b3ba2e48f91a0e17549"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/2300/model/clarityV3.ayHC.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22clarity_3.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T224439Z&X-Amz-SignedHeaders=host&X-Amz-Signature=0588fb75ee5412e0a4c98e681752eac3e61a13e739bd2aaf8dba1f5a3ba0f420"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/81744/epinikion.pGn7.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22epicphotogasm_lastUnicorn.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T224432Z&X-Amz-SignedHeaders=host&X-Amz-Signature=7b33707433138fab88aafc5c86e72a54290e2efea4a73f6343694e51d13e6c37"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/8957/analogmadnessv6.yVGR.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22analogMadness_v60.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T224425Z&X-Amz-SignedHeaders=host&X-Amz-Signature=5158fcc4e24d9e2b4910b06ffc8ca469e10a313ae964841d5f2a114cf46d3cc5"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/1651524/realcartoonrealv10.2oFh.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22realcartoonRealistic_v10.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T224418Z&X-Amz-SignedHeaders=host&X-Amz-Signature=d09ca255b9544315d1365dc5befef993c08fba6b2b8ab218ad53ca9cd7eb267c"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/67578/perfect20world20v6.cmkV.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22perfectWorld_v6Baked.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T223913Z&X-Amz-SignedHeaders=host&X-Amz-Signature=81079967dab5400501feee630673fff37f65dd7893720dffeef20ae2be1e85a8"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/3865/thiccV23.NWPw.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22thicc_v2.3.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231214/us-east-1/s3/aws4_request&X-Amz-Date=20231214T132809Z&X-Amz-SignedHeaders=host&X-Amz-Signature=40764fae31cea245e123719435c5b63b74358f474c895d15523201e6bb1dedd4"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/764940/juggernautxl.sgUx.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22juggernautXL_v7Rundiffusion.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231214/us-east-1/s3/aws4_request&X-Amz-Date=20231214T132802Z&X-Amz-SignedHeaders=host&X-Amz-Signature=6a05fbc6a086cc22c61cfde51abf4b0413486eacf13e169a5048e67eff4f5532"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/1461244/shidoshimixV50.2OgF.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22shidoshiMix_v50.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231214/us-east-1/s3/aws4_request&X-Amz-Date=20231214T132752Z&X-Amz-SignedHeaders=host&X-Amz-Signature=51d75e71d6afd8c48e07b7ae86dfbd874cd2e04a762d622ced3c900b677190ed"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/1651524/realcartoonrealv11.JqRS.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22realcartoonRealistic_v11.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231214/us-east-1/s3/aws4_request&X-Amz-Date=20231214T132745Z&X-Amz-SignedHeaders=host&X-Amz-Signature=bf8241321be90d6277c335686b36fe875d1db81d81e186946c9388fcc97b0602"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/1555788/anrealspicemixV2.fmub.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22anrealspicemix_v20.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231214/us-east-1/s3/aws4_request&X-Amz-Date=20231214T132733Z&X-Amz-SignedHeaders=host&X-Amz-Signature=f7926c4906099b7d9c80eb46fa5510d637b28f75cc3f703b8adf4d1a875eb613"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/1555788/anrealV1.wWy1.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22anreal_v10.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231214/us-east-1/s3/aws4_request&X-Amz-Date=20231214T132727Z&X-Amz-SignedHeaders=host&X-Amz-Signature=086d4181a06e8f34b475d0ad3d5c6a312df29f761c8dfe83faa5aa1fb655fae1"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/894473/perfectdeliberatev5.arcT.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22perfectdeliberate_v5.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231214/us-east-1/s3/aws4_request&X-Amz-Date=20231214T132714Z&X-Amz-SignedHeaders=host&X-Amz-Signature=09a086b29230ebc333b7e34ebc4a3999d3271dc4bf3103df6d81f237c910f309"
)


LORA_MODELS=(
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/model/3865/thiccV23.NWPw.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22thicc_v2.3.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231214/us-east-1/s3/aws4_request&X-Amz-Date=20231214T132809Z&X-Amz-SignedHeaders=host&X-Amz-Signature=40764fae31cea245e123719435c5b63b74358f474c895d15523201e6bb1dedd4"
    "https://civitai.com/api/download/models/87153"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/833907/model/elixir.1Zkf.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22Elixir.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T225537Z&X-Amz-SignedHeaders=host&X-Amz-Signature=142210036ca3b3e448ca8efd87d63448be159111933aa9f64d83ae6c6af29120"
    "https://civitai-delivery-worker-prod.5ac0637cfd0766c97916cefa3764fbdf.r2.cloudflarestorage.com/1969604/model/addDetailXl.MLUV.safetensors?X-Amz-Expires=86400&response-content-disposition=attachment%3B%20filename%3D%22add-detail-xl.safetensors%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=e01358d793ad6966166af8b3064953ad/20231123/us-east-1/s3/aws4_request&X-Amz-Date=20231123T225551Z&X-Amz-SignedHeaders=host&X-Amz-Signature=7993afbec8192118e686a76aa6c4335b658df93d43dc79566625fa6722f5f8b5"
)

VAE_MODELS=(
    "https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

EMBEDDINGS=(
    "https://civitai.com/api/download/models/60938"
    "https://civitai.com/api/download/models/25820"
    "https://civitai.com/api/download/models/94057"
    "https://civitai.com/api/download/models/97691"
    "https://civitai.com/api/download/models/6056"
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    provisioning_print_header
    provisioning_get_extensions
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/Stable-diffusion" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/Lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/extensions/sd-webui-controlnet/models" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/VAE" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/models/ESRGAN" \
        "${ESRGAN_MODELS[@]}"
    provisioning_get_models \
        "/opt/stable-diffusion-webui/embeddings" \
        "${EMBEDDINGS[@]}"
    provisioning_print_end
}

function provisioning_get_extensions() {
    for repo in "${EXTENSIONS[@]}"; do
        dir="${repo##*/}"
        path="/opt/stable-diffusion-webui/extensions/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating extension: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    micromamba -n webui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            printf "Downloading extension: %s...\n" "${repo}"
            git clone "${repo}" "${path}"
            if [[ -e $requirements ]]; then
                micromamba -n webui run ${PIP_INSTALL} -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    wget --header="Authorization: Bearer 577c5ff6825ad835ddd5439193a02b9f" -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
}

provisioning_start
git clone https://github.com/mattjaybe/sd-wildcards.git
cp -fv sd-wildcards/wildcards/* /opt/stable-diffusion-webui/extensions/sd-dynamic-prompts/wildcards/